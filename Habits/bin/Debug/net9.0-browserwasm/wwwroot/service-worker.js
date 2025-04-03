import { config as unoConfig } from "/package_3aecd3ff8db5661eb7f359d82f11a41dc6d958fd/uno-config.js";


if (unoConfig.environmentVariables["UNO_BOOTSTRAP_DEBUGGER_ENABLED"] !== "True") {
    console.debug("[ServiceWorker] Initializing");
    let uno_enable_tracing = unoConfig.uno_enable_tracing;

    self.addEventListener('install', function (e) {
        console.debug('[ServiceWorker] Installing offline worker');
        e.waitUntil(
            caches.open('692d08d8-71ff-4712-b6e6-4f338e22c714').then(async function (cache) {
                console.debug('[ServiceWorker] Caching app binaries and content');

                // Add files one by one to avoid failed downloads to prevent the
                // worker to fail installing.
                for (var i = 0; i < unoConfig.offline_files.length; i++) {
                    try {
                        if (uno_enable_tracing) {
                            console.debug(`[ServiceWorker] cache ${key}`);
                        }

                        await cache.add(unoConfig.offline_files[i]);
                    }
                    catch (e) {
                        console.debug(`[ServiceWorker] Failed to fetch ${unoConfig.offline_files[i]}`);
                    }
                }

                // Add the runtime's own files to the cache. We cannot use the
                // existing cached content from the runtime as the keys contain a
                // hash we cannot reliably compute.
                var c = await fetch("/_framework/blazor.boot.json");
                const monoConfigResources = (await c.json()).resources;

                var entries = {
                    ...(monoConfigResources.coreAssembly || {})
                    , ...(monoConfigResources.assembly || {})
                    , ...(monoConfigResources.lazyAssembly || {})
                    , ...(monoConfigResources.jsModuleWorker || {})
                    , ...(monoConfigResources.jsModuleGlobalization || {})
                    , ...(monoConfigResources.jsModuleNative || {})
                    , ...(monoConfigResources.jsModuleRuntime || {})
                    , ...(monoConfigResources.wasmNative || {})
                    , ...(monoConfigResources.icu || {})
                    , ...(monoConfigResources.coreAssembly || {})
                };

                for (var key in entries) {
                    var uri = `/_framework/${key}`;

                    if (uno_enable_tracing) {
                        console.debug(`[ServiceWorker] cache ${uri}`);
                    }

                    await cache.add(uri);
                }
            })
        );
    });

    self.addEventListener('activate', event => {
        event.waitUntil(self.clients.claim());
    });

    self.addEventListener('fetch', event => {
        event.respondWith(async function () {
            try {
                // Network first mode to get fresh content every time, then fallback to
                // cache content if needed.
                return await fetch(event.request);
            } catch (err) {
                return caches.match(event.request).then(response => {
                    return response || fetch(event.request);
                });
            }
        }());
    });
}
else {
    // In development, always fetch from the network and do not enable offline support.
    // This is because caching would make development more difficult (changes would not
    // be reflected on the first load after each change).
    // It also breaks the hot reload feature because VS's browserlink is not always able to
    // inject its own framework in the served scripts and pages.
    self.addEventListener('fetch', () => { });
}
