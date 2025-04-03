; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [327 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [981 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 324
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 306
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x022f31be406de945, ; 4: Microsoft.Extensions.Options.ConfigurationExtensions => 201
	i64 u0x0284512fad379f7e, ; 5: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 6: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 7: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 8: lib_Xamarin.AndroidX.AppCompat.dll.so => 258
	i64 u0x03621c804933a890, ; 9: System.Buffers => 7
	i64 u0x0399610510a38a38, ; 10: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x03c4743d1c68b959, ; 11: CommonServiceLocator.dll => 174
	i64 u0x047408741db2431a, ; 12: Xamarin.AndroidX.DynamicAnimation => 279
	i64 u0x0517ef04e06e9f76, ; 13: System.Net.Primitives => 71
	i64 u0x0565d18c6da3de38, ; 14: Xamarin.AndroidX.RecyclerView => 301
	i64 u0x0581db89237110e9, ; 15: lib_System.Collections.dll.so => 12
	i64 u0x05a1c25e78e22d87, ; 16: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x05bf1224940324ca, ; 17: Uno.Core.Extensions.Disposables.dll => 210
	i64 u0x06388ffe9f6c161a, ; 18: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 19: System.Configuration.dll => 19
	i64 u0x0680a433c781bb3d, ; 20: Xamarin.AndroidX.Collection.Jvm => 266
	i64 u0x069fff96ec92a91d, ; 21: System.Xml.XPath.dll => 161
	i64 u0x06b144cbebb60242, ; 22: Uno.Diagnostics.Eventing.dll => 214
	i64 u0x070b0847e18dab68, ; 23: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 281
	i64 u0x0739448d84d3b016, ; 24: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 309
	i64 u0x07469f2eecce9e85, ; 25: mscorlib.dll => 167
	i64 u0x075a6e1f7cb77bf6, ; 26: UniversalImageLoader.dll => 239
	i64 u0x07dcdc7460a0c5e4, ; 27: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 28: lib_Microsoft.Extensions.Logging.Debug.dll.so => 197
	i64 u0x088610fc2509f69e, ; 29: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 310
	i64 u0x08a7c865576bbde7, ; 30: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 31: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 276
	i64 u0x08f3c9788ee2153c, ; 32: Xamarin.AndroidX.DrawerLayout => 278
	i64 u0x09138715c92dba90, ; 33: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 34: lib_Microsoft.Extensions.Options.dll.so => 200
	i64 u0x092266563089ae3e, ; 35: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 36: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 37: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 38: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 39: System.Formats.Tar => 39
	i64 u0x0be2e1f8ce4064ed, ; 40: Xamarin.AndroidX.ViewPager => 312
	i64 u0x0c0edaaebec7f4bb, ; 41: Microsoft.Extensions.Logging.Console => 196
	i64 u0x0c59ad9fbbd43abe, ; 42: Mono.Android => 172
	i64 u0x0c74af560004e816, ; 43: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c83c82812e96127, ; 44: lib_System.Net.Mail.dll.so => 67
	i64 u0x0ce6935d49a012ea, ; 45: lib_Uno.Core.Extensions.Collections.dll.so => 209
	i64 u0x0d13cd7cce4284e4, ; 46: System.Security.SecureString => 130
	i64 u0x0d70f04f7f0d4f44, ; 47: lib_Uno.UI.HotDesign.PropertyGrid.dll.so => 233
	i64 u0x0da13792b76f89bf, ; 48: lib_Microsoft.Extensions.Configuration.UserSecrets.dll.so => 183
	i64 u0x0e04e702012f8463, ; 49: Xamarin.AndroidX.Emoji2 => 280
	i64 u0x0e14e73a54dda68e, ; 50: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0f5e7abaa7cf470a, ; 51: System.Net.HttpListener => 66
	i64 u0x0ffd31f49f95aa54, ; 52: Uno.UI.HotDesign.Hierarchy.dll => 231
	i64 u0x1001f97bbe242e64, ; 53: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 54: Xamarin.AndroidX.CustomView => 275
	i64 u0x1065c4cb554c3d75, ; 55: System.IO.IsolatedStorage.dll => 52
	i64 u0x10a461bde7caa83d, ; 56: Uno.UI.HotDesign.CommunityToolkit => 230
	i64 u0x10f6cfcbcf801616, ; 57: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 58: System.Security.Cryptography.Primitives => 125
	i64 u0x116b98357c9d923c, ; 59: lib_Uno.Extensions.Core.UI.dll.so => 216
	i64 u0x11a603952763e1d4, ; 60: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 61: System.Net.WebSockets.dll => 81
	i64 u0x12128b3f59302d47, ; 62: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 63: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 64: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 65: Xamarin.AndroidX.RecyclerView.dll => 301
	i64 u0x12d3b63863d4ab0b, ; 66: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x1335cab027872f4a, ; 67: Uno.Diagnostics.Eventing => 214
	i64 u0x134eab1061c395ee, ; 68: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 69: Xamarin.AndroidX.Browser => 263
	i64 u0x13beedefb0e28a45, ; 70: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 71: lib_Java.Interop.dll.so => 169
	i64 u0x143d8ea60a6a4011, ; 72: Microsoft.Extensions.DependencyInjection.Abstractions => 185
	i64 u0x1497051b917530bd, ; 73: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x152a448bd1e745a7, ; 74: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 75: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x1573ff102697d837, ; 76: Uno.Foundation.Logging.dll => 220
	i64 u0x159cc6c81072f00e, ; 77: lib_System.Diagnostics.EventLog.dll.so => 208
	i64 u0x15bdc156ed462f2f, ; 78: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 79: System.Resources.Writer.dll => 101
	i64 u0x16bf2a22df043a09, ; 80: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 81: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 82: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 83: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 84: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x1749e14ff4710666, ; 85: lib_Uno.Fonts.OpenSans.dll.so => 218
	i64 u0x174f71c46216e44a, ; 86: Xamarin.KotlinX.Coroutines.Core => 324
	i64 u0x1752c12f1e1fc00c, ; 87: System.Core => 21
	i64 u0x17549effa322a938, ; 88: Uno.UI.HotDesign.Client.Core => 228
	i64 u0x17f9358913beb16a, ; 89: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 90: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18a9befae51bb361, ; 91: System.Net.WebClient => 77
	i64 u0x193d7a04b7eda8bc, ; 92: lib_Xamarin.AndroidX.Print.dll.so => 299
	i64 u0x19777fba3c41b398, ; 93: Xamarin.AndroidX.Startup.StartupRuntime.dll => 305
	i64 u0x19a4c090f14ebb66, ; 94: System.Security.Claims => 119
	i64 u0x19bc90af88e68474, ; 95: lib_Uno.Core.Extensions.Equality.dll.so => 211
	i64 u0x1a91866a319e9259, ; 96: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 97: lib_System.dll.so => 165
	i64 u0x1aea8f1c3b282172, ; 98: lib_System.Net.Ping.dll.so => 70
	i64 u0x1bb3620f9bfed3f5, ; 99: Uno.UI.Adapter.Microsoft.Extensions.Logging => 226
	i64 u0x1bc766e07b2b4241, ; 100: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 302
	i64 u0x1c292b1598348d77, ; 101: Microsoft.Extensions.Diagnostics.dll => 186
	i64 u0x1c5217a9e4973753, ; 102: lib_Microsoft.Extensions.FileProviders.Physical.dll.so => 189
	i64 u0x1c753b5ff15bce1b, ; 103: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 104: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 105: System.Globalization.Calendars.dll => 40
	i64 u0x1db6820994506bf5, ; 106: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 107: System.Diagnostics.StackTrace => 30
	i64 u0x1e7c31185e2fb266, ; 108: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1ed8fcce5e9b50a0, ; 109: Microsoft.Extensions.Options.dll => 200
	i64 u0x1f055d15d807e1b2, ; 110: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 111: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 112: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 113: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 307
	i64 u0x1f7fcab141728c45, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI => 284
	i64 u0x20237ea48006d7a8, ; 115: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 116: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20c7339f8c515d8f, ; 117: lib_Uno.UI.HotDesign.Xaml.Interactions.dll.so => 235
	i64 u0x20fab3cf2dfbc8df, ; 118: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 119: System.Globalization => 42
	i64 u0x21419508838f7547, ; 120: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 121: System.Runtime => 117
	i64 u0x2198e5bc8b7153fa, ; 122: Xamarin.AndroidX.Annotation.Experimental.dll => 256
	i64 u0x219ea1b751a4dee4, ; 123: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21b5c677c2cb9a31, ; 124: lib_Uno.Core.Extensions.Logging.Singleton.dll.so => 213
	i64 u0x21cc7e445dcd5469, ; 125: System.Reflection.Emit.ILGeneration => 91
	i64 u0x224538d85ed15a82, ; 126: System.IO.Pipes => 56
	i64 u0x22461382310e5e72, ; 127: Uno.Xaml.dll => 249
	i64 u0x22908438c6bed1af, ; 128: lib_System.Threading.Timer.dll.so => 148
	i64 u0x231ee10f66783c13, ; 129: Uno.UI.Composition => 242
	i64 u0x237be844f1f812c7, ; 130: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 131: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 132: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 133: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 134: Xamarin.AndroidX.Core.dll => 271
	i64 u0x242bf4514622c837, ; 135: Xamarin.AndroidX.Legacy.Support.V4.dll => 286
	i64 u0x247619fe4413f8bf, ; 136: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x2643615a57920257, ; 137: Xamarin.AndroidX.Legacy.Support.V4 => 286
	i64 u0x2662c629b96b0b30, ; 138: lib_Xamarin.Kotlin.StdLib.dll.so => 320
	i64 u0x268c1439f13bcc29, ; 139: lib_Microsoft.Extensions.Primitives.dll.so => 202
	i64 u0x26a670e154a9c54b, ; 140: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 141: System.IO.dll => 58
	i64 u0x2759af78ab94d39b, ; 142: System.Net.WebSockets => 81
	i64 u0x27b410442fad6cf1, ; 143: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 144: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 145: System.Net.Primitives.dll => 71
	i64 u0x283248a48688210b, ; 146: Uno.UI => 248
	i64 u0x2855ff2e8947532e, ; 147: Uno.Fonts.Fluent.dll => 217
	i64 u0x286835e259162700, ; 148: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 300
	i64 u0x28e52865585a1ebe, ; 149: Microsoft.Extensions.Diagnostics.Abstractions.dll => 187
	i64 u0x2927d345f3daec35, ; 150: SkiaSharp.dll => 204
	i64 u0x2a3b095612184159, ; 151: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 152: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad5d6b13b7a3e04, ; 153: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 154: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 155: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b4d4904cebfa4e9, ; 156: Microsoft.Extensions.FileSystemGlobbing => 190
	i64 u0x2b6989d78cba9a15, ; 157: Xamarin.AndroidX.Concurrent.Futures.dll => 267
	i64 u0x2c4c3b619f1b41f8, ; 158: Xamarin.AndroidX.AsyncLayoutInflater.dll => 262
	i64 u0x2c52b6785191227e, ; 159: lib_Microsoft.Extensions.Logging.Configuration.dll.so => 195
	i64 u0x2cbd9262ca785540, ; 160: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 161: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 162: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 163: System.Threading.dll => 149
	i64 u0x2d5ffcae1ad0aaca, ; 164: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 165: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 166: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 167: System.IO.FileSystem => 51
	i64 u0x2f02f94df3200fe5, ; 168: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 169: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 170: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 171: lib_System.Xml.dll.so => 164
	i64 u0x2f929b94724a0444, ; 172: Uno.Fonts.OpenSans => 218
	i64 u0x302f1b4dc6bdc050, ; 173: Uno.UI.RemoteControl.Messaging.dll => 252
	i64 u0x309ee9eeec09a71e, ; 174: lib_Xamarin.AndroidX.Fragment.dll.so => 282
	i64 u0x30c6dda129408828, ; 175: System.IO.IsolatedStorage => 52
	i64 u0x30e7aecf2b6bd6a5, ; 176: lib_SkiaSharp.SceneGraph.dll.so => 205
	i64 u0x31195fef5d8fb552, ; 177: _Microsoft.Android.Resource.Designer.dll => 326
	i64 u0x312c8ed623cbfc8d, ; 178: Xamarin.AndroidX.Window.dll => 314
	i64 u0x31496b779ed0663d, ; 179: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x3216560da9a54d45, ; 180: Uno.Toolkit.WinUI.Material.dll => 225
	i64 u0x32243413e774362a, ; 181: Xamarin.AndroidX.CardView.dll => 264
	i64 u0x3235427f8d12dae1, ; 182: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x32aa989ff07a84ff, ; 183: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33642d5508314e46, ; 184: Microsoft.Extensions.FileSystemGlobbing.dll => 190
	i64 u0x337f012a75968fc4, ; 185: Uno.Fonts.Roboto.dll => 219
	i64 u0x33829542f112d59b, ; 186: System.Collections.Immutable => 9
	i64 u0x341abc357fbb4ebf, ; 187: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 188: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34ba4f98e908c741, ; 189: Uno.UI.Toolkit => 247
	i64 u0x34bd75e3edd6f65d, ; 190: Uno.Extensions.Core => 215
	i64 u0x34d5776a14f55c84, ; 191: lib_Uno.Toolkit.WinUI.dll.so => 224
	i64 u0x353590da528c9d22, ; 192: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 193: lib_Xamarin.AndroidX.ViewPager2.dll.so => 313
	i64 u0x355282fc1c909694, ; 194: Microsoft.Extensions.Configuration => 176
	i64 u0x3552fc5d578f0fbf, ; 195: Xamarin.AndroidX.Arch.Core.Common => 260
	i64 u0x355c649948d55d97, ; 196: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x3628ab68db23a01a, ; 197: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 198: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 199: System.Numerics => 84
	i64 u0x367a3676061023d7, ; 200: Uno.UI.FluentTheme.v1.dll => 245
	i64 u0x36b2b50fdf589ae2, ; 201: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 202: System.IO.MemoryMappedFiles => 53
	i64 u0x37480c4f454e74d7, ; 203: lib_UniversalImageLoader.dll.so => 239
	i64 u0x374ef46b06791af6, ; 204: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 205: lib_Xamarin.Jetbrains.Annotations.dll.so => 319
	i64 u0x37bc29f3183003b6, ; 206: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 207: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 208: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x3845db321af44b80, ; 209: Uno.UI.FluentTheme => 244
	i64 u0x385c17636bb6fe6e, ; 210: Xamarin.AndroidX.CustomView.dll => 275
	i64 u0x38869c811d74050e, ; 211: System.Net.NameResolution.dll => 68
	i64 u0x393c226616977fdb, ; 212: lib_Xamarin.AndroidX.ViewPager.dll.so => 312
	i64 u0x39aa39fda111d9d3, ; 213: Newtonsoft.Json => 203
	i64 u0x39c3107c28752af1, ; 214: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 188
	i64 u0x3a9b6c5ebeb4b1b9, ; 215: Microsoft.Extensions.Logging.EventLog => 198
	i64 u0x3ab5859054645f72, ; 216: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad75090c3fac0e9, ; 217: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 302
	i64 u0x3ae44ac43a1fbdbb, ; 218: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 219: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3baca4076d706de1, ; 220: Uno.UI.HotDesign.CommunityToolkit.dll => 230
	i64 u0x3c3aafb6b3a00bf6, ; 221: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 222: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 223: Xamarin.Kotlin.StdLib => 320
	i64 u0x3c7e5ed3d5db71bb, ; 224: System.Security => 131
	i64 u0x3cd9d281d402eb9b, ; 225: Xamarin.AndroidX.Browser.dll => 263
	i64 u0x3d1c50cc001a991e, ; 226: Xamarin.Google.Guava.ListenableFuture.dll => 318
	i64 u0x3d1f54d6b217cd0f, ; 227: Microsoft.Extensions.Configuration.UserSecrets => 183
	i64 u0x3d2b1913edfc08d7, ; 228: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 229: System.Xml.Linq => 156
	i64 u0x3d9c2a242b040a50, ; 230: lib_Xamarin.AndroidX.Core.dll.so => 271
	i64 u0x3db495de2204755c, ; 231: Microsoft.Extensions.Configuration.FileExtensions => 181
	i64 u0x3dbb6b9f5ab90fa7, ; 232: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 279
	i64 u0x3dd439ce7a88088b, ; 233: lib_Uno.UI.HotDesign.Hierarchy.dll.so => 231
	i64 u0x3e5441657549b213, ; 234: Xamarin.AndroidX.ResourceInspection.Annotation => 302
	i64 u0x3e57d4d195c53c2e, ; 235: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 236: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 237: Xamarin.AndroidX.SlidingPaneLayout.dll => 304
	i64 u0x3f510adf788828dd, ; 238: System.Threading.Tasks.Extensions => 143
	i64 u0x3f6f5914291cdcf7, ; 239: Microsoft.Extensions.Hosting.Abstractions => 192
	i64 u0x407740ff2e914d86, ; 240: Xamarin.AndroidX.Print.dll => 299
	i64 u0x40c98b6bd77346d4, ; 241: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 242: mscorlib => 167
	i64 u0x41cab042be111c34, ; 243: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 259
	i64 u0x423a9ecc4d905a88, ; 244: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 245: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 246: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 247: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 248: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 249: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 250: Mono.Android.dll => 172
	i64 u0x437d06c381ed575a, ; 251: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43e8ca5bc927ff37, ; 252: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 281
	i64 u0x43ee9ed9f6ac86fc, ; 253: Microsoft.Extensions.Logging.EventSource.dll => 199
	i64 u0x43ffdb4d66f61308, ; 254: Microsoft.Extensions.Logging.Console.dll => 196
	i64 u0x448bd33429269b19, ; 255: Microsoft.CSharp => 1
	i64 u0x44942f1193b90245, ; 256: lib_Uno.UI.Adapter.Microsoft.Extensions.Logging.dll.so => 226
	i64 u0x4499fa3c8e494654, ; 257: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 258: Xamarin.Kotlin.StdLib.dll => 320
	i64 u0x454b4d1e66bb783c, ; 259: Xamarin.AndroidX.Lifecycle.Process => 290
	i64 u0x45c40276a42e283e, ; 260: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 261: System.AppContext.dll => 6
	i64 u0x45decad1218d1192, ; 262: Uno.Core.Extensions.Equality.dll => 211
	i64 u0x4712d4f69222f133, ; 263: lib_SkiaSharp.Views.Windows.dll.so => 207
	i64 u0x47358bd471172e1d, ; 264: lib_System.Xml.Linq.dll.so => 156
	i64 u0x4746648ac1f0eef4, ; 265: lib_Uno.UI.HotDesign.Xaml.Interactivity.dll.so => 236
	i64 u0x47598cc3106f5ca5, ; 266: Uno.UI.HotDesign.Messaging => 232
	i64 u0x480c0a47dd42dd81, ; 267: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 268: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 285
	i64 u0x49e952f19a4e2022, ; 269: System.ObjectModel => 85
	i64 u0x49f9e6948a8131e4, ; 270: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 311
	i64 u0x4a0b4d28cc5945ae, ; 271: Microsoft.Extensions.Configuration.CommandLine => 179
	i64 u0x4a7a18981dbd56bc, ; 272: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4a84f946e042885e, ; 273: lib_Uno.Core.Extensions.Disposables.dll.so => 210
	i64 u0x4b07a0ed0ab33ff4, ; 274: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 275: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 276: System.Text.Json => 138
	i64 u0x4b7f698e07b2b2e9, ; 277: lib_Uno.Foundation.dll.so => 240
	i64 u0x4c7755cf07ad2d5f, ; 278: System.Net.Http.Json.dll => 64
	i64 u0x4cc5f15266470798, ; 279: lib_Xamarin.AndroidX.Loader.dll.so => 296
	i64 u0x4cf6f67dc77aacd2, ; 280: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 281: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 282: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 283: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 284: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 285: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 260
	i64 u0x4d7793536e79c309, ; 286: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 287: System.Runtime.Loader.dll => 110
	i64 u0x4dd9247f1d2c3235, ; 288: Xamarin.AndroidX.Loader.dll => 296
	i64 u0x4e2aeee78e2c4a87, ; 289: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 300
	i64 u0x4e32f00cb0937401, ; 290: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 291: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 292: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 293: System.Globalization.Calendars => 40
	i64 u0x4fdc964ec1888e25, ; 294: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 178
	i64 u0x50c3a29b21050d45, ; 295: System.Linq.Parallel.dll => 60
	i64 u0x5112ed116d87baf8, ; 296: CommunityToolkit.Mvvm => 175
	i64 u0x5116b21580ae6eb0, ; 297: Microsoft.Extensions.Configuration.Binder.dll => 178
	i64 u0x5131bbe80989093f, ; 298: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 294
	i64 u0x516324a5050a7e3c, ; 299: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 300: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 301: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 302: System.Resources.Reader => 99
	i64 u0x526ce79eb8e90527, ; 303: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 304: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 305: Xamarin.AndroidX.Core => 271
	i64 u0x53978aac584c666e, ; 306: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 307: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 308: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53e450ebd586f842, ; 309: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 297
	i64 u0x5435e6f049e9bc37, ; 310: System.Security.Claims.dll => 119
	i64 u0x54430c9d68d6835f, ; 311: Uno.UI.HotDesign.Xaml.Interactions.dll => 235
	i64 u0x54795225dd1587af, ; 312: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 313: Xamarin.AndroidX.Lifecycle.Common.dll => 287
	i64 u0x556e8b63b660ab8b, ; 314: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 288
	i64 u0x5588627c9a108ec9, ; 315: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 316: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 317: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 318: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x568938eab398ce9b, ; 319: SkiaSharp.SceneGraph.dll => 205
	i64 u0x56a8b26e1aeae27b, ; 320: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 321: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 322: System.Private.Uri => 87
	i64 u0x571dda7188dff28b, ; 323: lib_Uno.UI.Dispatching.dll.so => 243
	i64 u0x576499c9f52fea31, ; 324: Xamarin.AndroidX.Annotation => 255
	i64 u0x579a06fed6eec900, ; 325: System.Private.CoreLib.dll => 173
	i64 u0x57adda3c951abb33, ; 326: Microsoft.Extensions.Hosting.Abstractions.dll => 192
	i64 u0x57c542c14049b66d, ; 327: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 328: System.Threading.Timer => 148
	i64 u0x584ac38e21d2fde1, ; 329: Microsoft.Extensions.Configuration.Binder => 178
	i64 u0x58688d9af496b168, ; 330: Microsoft.Extensions.DependencyInjection.dll => 184
	i64 u0x588c167a79db6bfb, ; 331: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 317
	i64 u0x592118920837fbdd, ; 332: Uno.UI.FluentTheme.v2 => 246
	i64 u0x595a356d23e8da9a, ; 333: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59f9e60b9475085f, ; 334: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 256
	i64 u0x5a745f5101a75527, ; 335: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 336: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 270
	i64 u0x5a8f6699f4a1caa9, ; 337: lib_System.Threading.dll.so => 149
	i64 u0x5a937c3bd8caaa2a, ; 338: Uno.Core.Extensions.Disposables => 210
	i64 u0x5a97621bbf6b97c1, ; 339: Uno.Extensions.Core.dll => 215
	i64 u0x5abe6626ac8129b9, ; 340: Uno.UI.HotDesign.Toolbox.dll => 234
	i64 u0x5ae8e4f3eae4d547, ; 341: Xamarin.AndroidX.Legacy.Support.Core.Utils => 285
	i64 u0x5ae9cd33b15841bf, ; 342: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 343: System.Private.DataContractSerialization => 86
	i64 u0x5b8109e8e14c5e3e, ; 344: System.Globalization.Extensions.dll => 41
	i64 u0x5bdf16b09da116ab, ; 345: Xamarin.AndroidX.Collection => 265
	i64 u0x5c30a4a35f9cc8c4, ; 346: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 347: lib_Microsoft.Extensions.Logging.dll.so => 193
	i64 u0x5c53c29f5073b0c9, ; 348: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 349: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5cc5d8982976e2bb, ; 350: SkiaSharp.Views.Windows.dll => 207
	i64 u0x5d0a4a29b02d9d3c, ; 351: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d40c9b15181641f, ; 352: lib_Xamarin.AndroidX.Emoji2.dll.so => 280
	i64 u0x5d478aee7235f487, ; 353: lib_Uno.UI.Toolkit.dll.so => 247
	i64 u0x5d6ca10d35e9485b, ; 354: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 267
	i64 u0x5d7ec76c1c703055, ; 355: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 356: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 357: Xamarin.AndroidX.Collection.Jvm.dll => 266
	i64 u0x5e467bc8f09ad026, ; 358: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 359: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 360: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 361: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 362: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 363: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 364: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 365: System.Data.Common => 22
	i64 u0x5fac98e0b37a5b9d, ; 366: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 367: lib_Microsoft.Extensions.DependencyInjection.dll.so => 184
	i64 u0x60cd4e33d7e60134, ; 368: Xamarin.KotlinX.Coroutines.Core.Jvm => 325
	i64 u0x60f62d786afcf130, ; 369: System.Memory => 63
	i64 u0x61077ab83a0aeb8e, ; 370: lib_Uno.Extensions.Core.dll.so => 215
	i64 u0x6187a781fa8a67cf, ; 371: lib_Uno.UI.dll.so => 248
	i64 u0x61bb78c89f867353, ; 372: System.IO => 58
	i64 u0x61c72fd7e3bc0073, ; 373: lib_Uno.Diagnostics.Eventing.dll.so => 214
	i64 u0x61d88f399afb2f45, ; 374: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 375: System.Private.CoreLib => 173
	i64 u0x634be9581b31caef, ; 376: Microsoft.Extensions.Logging.EventLog.dll => 198
	i64 u0x63d5e3aa4ef9b931, ; 377: Xamarin.KotlinX.Coroutines.Android.dll => 323
	i64 u0x63f1f6883c1e23c2, ; 378: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 379: Xamarin.Google.Android.Material.dll => 316
	i64 u0x640e3b14dbd325c2, ; 380: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 381: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 382: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x653d3b893497cb1e, ; 383: lib_Uno.Xaml.dll.so => 249
	i64 u0x65ece51227bfa724, ; 384: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 385: Xamarin.AndroidX.Annotation.Jvm.dll => 257
	i64 u0x6679b2337ee6b22a, ; 386: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x667fe0c6987b661a, ; 387: Habits.dll => 0
	i64 u0x6692e924eade1b29, ; 388: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 389: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 294
	i64 u0x66d13304ce1a3efa, ; 390: Xamarin.AndroidX.CursorAdapter => 274
	i64 u0x674303f65d8fad6f, ; 391: lib_System.Net.Quic.dll.so => 72
	i64 u0x6744cb0cb8e0b315, ; 392: lib_Microsoft.Extensions.Logging.EventLog.dll.so => 198
	i64 u0x6756ca4cad62e9d6, ; 393: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 269
	i64 u0x67817c2e525f9e91, ; 394: lib_Uno.UI.RemoteControl.dll.so => 251
	i64 u0x67c0802770244408, ; 395: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 396: lib_System.Formats.Tar.dll.so => 39
	i64 u0x6872ec7a2e36b1ac, ; 397: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 398: Xamarin.KotlinX.AtomicFU.dll => 321
	i64 u0x68fb1f9188f2a501, ; 399: Uno.UI.RemoteControl.Messaging => 252
	i64 u0x68fbbbe2eb455198, ; 400: System.Formats.Asn1 => 38
	i64 u0x69a3e26c76f6eec4, ; 401: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 315
	i64 u0x6a4d7577b2317255, ; 402: System.Runtime.InteropServices.dll => 108
	i64 u0x6a9ad6d50582f81c, ; 403: lib_Uno.UI.FluentTheme.v1.dll.so => 245
	i64 u0x6afcedb171067e2b, ; 404: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 405: Xamarin.Jetbrains.Annotations => 319
	i64 u0x6ce874bff138ce2b, ; 406: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 293
	i64 u0x6d70755158ca866e, ; 407: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 408: Microsoft.Extensions.Primitives => 202
	i64 u0x6d7eeca99577fc8b, ; 409: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 410: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 411: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 274
	i64 u0x6d9bea6b3e895cf7, ; 412: Microsoft.Extensions.Primitives.dll => 202
	i64 u0x6dd9bf4083de3f6a, ; 413: Xamarin.AndroidX.DocumentFile.dll => 277
	i64 u0x6e0e81efa491f20a, ; 414: Microsoft.Extensions.Hosting.dll => 191
	i64 u0x6e19df2f3dcfe33d, ; 415: Uno.UI.HotDesign.Xaml.dll => 237
	i64 u0x6e838d9a2a6f6c9e, ; 416: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 417: lib_System.Core.dll.so => 21
	i64 u0x6f8a996b85c163e1, ; 418: lib_Uno.Fonts.Fluent.dll.so => 217
	i64 u0x6fb521749b8a226a, ; 419: Uno.dll => 250
	i64 u0x6ffc4967cc47ba57, ; 420: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 421: System.IO.FileSystem.dll => 51
	i64 u0x7027b29cbd1f2a0c, ; 422: Uno.UI.RemoteControl => 251
	i64 u0x709688f4ec2831e9, ; 423: lib_Xamarin.AndroidX.Media.dll.so => 298
	i64 u0x71485e7ffdb4b958, ; 424: System.Reflection.Extensions => 94
	i64 u0x716b00a7f4d7b1a3, ; 425: Uno.Toolkit.dll => 223
	i64 u0x7173c12b6c5fd247, ; 426: Uno.UI.HotDesign.Xaml.Interactivity.dll => 236
	i64 u0x717530326f808838, ; 427: lib_Microsoft.Extensions.Diagnostics.Abstractions.dll.so => 187
	i64 u0x71ad672adbe48f35, ; 428: System.ComponentModel.Primitives.dll => 16
	i64 u0x725f5a9e82a45c81, ; 429: System.Security.Cryptography.Encoding => 123
	i64 u0x72e0300099accce1, ; 430: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 431: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 432: Xamarin.Google.ErrorProne.Annotations.dll => 317
	i64 u0x73a6be34e822f9d1, ; 433: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 434: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 435: WindowsBase.dll => 166
	i64 u0x746cf89b511b4d40, ; 436: lib_Microsoft.Extensions.Diagnostics.dll.so => 186
	i64 u0x7503ac24fcf8095e, ; 437: Xamarin.AndroidX.Core.SplashScreen.dll => 273
	i64 u0x752d04248f3e9de6, ; 438: Uno.UI.Dispatching.dll => 243
	i64 u0x755a91767330b3d4, ; 439: lib_Microsoft.Extensions.Configuration.dll.so => 176
	i64 u0x75c326eb821b85c4, ; 440: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 441: lib_Xamarin.AndroidX.SavedState.dll.so => 303
	i64 u0x76ca07b878f44da0, ; 442: System.Runtime.Numerics.dll => 111
	i64 u0x7736c8a96e51a061, ; 443: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 257
	i64 u0x778a805e625329ef, ; 444: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 445: Xamarin.KotlinX.AtomicFU.Jvm => 322
	i64 u0x779f67ad3b8efbd5, ; 446: Microsoft.Extensions.Configuration.Json.dll => 182
	i64 u0x77f8a4acc2fdc449, ; 447: System.Security.Cryptography.Cng.dll => 121
	i64 u0x782c5d8eb99ff201, ; 448: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x7888a6733fa675d9, ; 449: Uno.UI.Dispatching => 243
	i64 u0x78a45e51311409b6, ; 450: Xamarin.AndroidX.Fragment.dll => 282
	i64 u0x78ed4ab8f9d800a1, ; 451: Xamarin.AndroidX.Lifecycle.ViewModel => 293
	i64 u0x7a39601d6f0bb831, ; 452: lib_Xamarin.KotlinX.AtomicFU.dll.so => 321
	i64 u0x7a7e7eddf79c5d26, ; 453: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 293
	i64 u0x7a9a57d43b0845fa, ; 454: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 455: Xamarin.AndroidX.Collection.dll => 265
	i64 u0x7b13d9eaa944ade8, ; 456: Xamarin.AndroidX.DynamicAnimation.dll => 279
	i64 u0x7bef86a4335c4870, ; 457: System.ComponentModel.TypeConverter => 17
	i64 u0x7c160b2bd93179e6, ; 458: lib_Uno.UI.RemoteControl.Messaging.dll.so => 252
	i64 u0x7c41d387501568ba, ; 459: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 460: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 268
	i64 u0x7c915d27bc4afbdb, ; 461: Xamarin.AndroidX.Core.SplashScreen => 273
	i64 u0x7cac6eacc9c9a06b, ; 462: lib_Uno.UI.Lottie.dll.so => 253
	i64 u0x7cd2ec8eaf5241cd, ; 463: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 464: Xamarin.Jetbrains.Annotations.dll => 319
	i64 u0x7d8ee2bdc8e3aad1, ; 465: System.Numerics.Vectors => 83
	i64 u0x7dd79496c6166bbf, ; 466: lib_CommonServiceLocator.dll.so => 174
	i64 u0x7df5df8db8eaa6ac, ; 467: Microsoft.Extensions.Logging.Debug => 197
	i64 u0x7dfc3d6d9d8d7b70, ; 468: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 469: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 470: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e571cad5915e6c3, ; 471: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 290
	i64 u0x7e6b1ca712437d7d, ; 472: Xamarin.AndroidX.Emoji2.ViewsHelper => 281
	i64 u0x7e946809d6008ef2, ; 473: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ecc13347c8fd849, ; 474: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 475: Xamarin.AndroidX.ViewPager.dll => 312
	i64 u0x7f34eb5c681d0985, ; 476: lib_Uno.UI.BindingHelper.Android.dll.so => 241
	i64 u0x7f9351cd44b1273f, ; 477: Microsoft.Extensions.Configuration.Abstractions => 177
	i64 u0x7fbd557c99b3ce6f, ; 478: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 289
	i64 u0x8076a9a44a2ca331, ; 479: System.Net.Quic => 72
	i64 u0x80ca3d88b0159b22, ; 480: lib_Xamarin.AndroidX.Legacy.Support.Core.UI.dll.so => 284
	i64 u0x80da183a87731838, ; 481: System.Reflection.Metadata => 95
	i64 u0x812c069d5cdecc17, ; 482: System.dll => 165
	i64 u0x81381be520a60adb, ; 483: Xamarin.AndroidX.Interpolator.dll => 283
	i64 u0x81657cec2b31e8aa, ; 484: System.Net => 82
	i64 u0x8171cdf22b671acf, ; 485: Uno.Themes.WinUI.dll => 222
	i64 u0x825767256f457674, ; 486: lib_Xamarin.AndroidX.Legacy.Support.V4.dll.so => 286
	i64 u0x8277f2be6b5ce05f, ; 487: Xamarin.AndroidX.AppCompat => 258
	i64 u0x828f06563b30bc50, ; 488: lib_Xamarin.AndroidX.CardView.dll.so => 264
	i64 u0x82920a8d9194a019, ; 489: Xamarin.KotlinX.AtomicFU.Jvm.dll => 322
	i64 u0x82b399cb01b531c4, ; 490: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 491: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 492: lib_System.Transactions.dll.so => 151
	i64 u0x846ce984efea52c7, ; 493: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 494: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 495: System.Runtime.Serialization.Json.dll => 113
	i64 u0x84f9060cc4a93c8f, ; 496: lib_SkiaSharp.dll.so => 204
	i64 u0x850c5ba0b57ce8e7, ; 497: lib_Xamarin.AndroidX.Collection.dll.so => 265
	i64 u0x851a3e1954958404, ; 498: Uno.Core.Extensions.Logging.Singleton => 213
	i64 u0x851d02edd334b044, ; 499: Xamarin.AndroidX.VectorDrawable => 309
	i64 u0x85c919db62150978, ; 500: Xamarin.AndroidX.Transition.dll => 308
	i64 u0x8662aaeb94fef37f, ; 501: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86b3e00c36b84509, ; 502: Microsoft.Extensions.Configuration.dll => 176
	i64 u0x86b62cb077ec4fd7, ; 503: System.Runtime.Serialization.Xml => 115
	i64 u0x8704193f462e892e, ; 504: lib_Microsoft.Extensions.FileSystemGlobbing.dll.so => 190
	i64 u0x8706ffb12bf3f53d, ; 505: Xamarin.AndroidX.Annotation.Experimental => 256
	i64 u0x872a5b14c18d328c, ; 506: System.ComponentModel.DataAnnotations => 14
	i64 u0x87c69b87d9283884, ; 507: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 508: System.IO.Compression.Brotli.dll => 43
	i64 u0x88ba6bc4f7762b03, ; 509: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 510: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 325
	i64 u0x88c373de2ec9b4ff, ; 511: lib_Uno.UI.HotDesign.Toolbox.dll.so => 234
	i64 u0x88f3740ca92b93ab, ; 512: lib_Uno.Themes.WinUI.dll.so => 222
	i64 u0x8930322c7bd8f768, ; 513: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 514: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 515: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 516: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x89e22268d7b408dc, ; 517: Uno.Core.Extensions.Collections.dll => 209
	i64 u0x8a060d46564a0c12, ; 518: Uno.Toolkit => 223
	i64 u0x8a19e3dc71b34b2c, ; 519: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8a7e97e1a349c268, ; 520: Uno.UI.HotDesign.Abstractions.dll => 227
	i64 u0x8ad229ea26432ee2, ; 521: Xamarin.AndroidX.Loader => 296
	i64 u0x8b45795125607260, ; 522: Uno.Core.Extensions.Equality => 211
	i64 u0x8b4ff5d0fdd5faa1, ; 523: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 524: System.Security.Principal.Windows => 128
	i64 u0x8b7e069255267079, ; 525: Uno.Extensions.Core.UI.dll => 216
	i64 u0x8b8d01333a96d0b5, ; 526: System.Diagnostics.Process.dll => 29
	i64 u0x8b9217410f624d49, ; 527: Uno.UI.HotDesign.Toolbox => 234
	i64 u0x8bcd4f918789551e, ; 528: Uno.UI.HotDesign.Abstractions => 227
	i64 u0x8c346c1b40688068, ; 529: lib_Uno.UI.HotDesign.CommunityToolkit.dll.so => 230
	i64 u0x8c575135aa1ccef4, ; 530: Microsoft.Extensions.FileProviders.Abstractions => 188
	i64 u0x8cdfdb4ce85fb925, ; 531: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 532: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 533: Xamarin.AndroidX.CursorAdapter.dll => 274
	i64 u0x8d52f7ea2796c531, ; 534: Xamarin.AndroidX.Emoji2.dll => 280
	i64 u0x8d7b8ab4b3310ead, ; 535: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 536: System.Collections.Concurrent => 8
	i64 u0x8ec6e06a61c1baeb, ; 537: lib_Newtonsoft.Json.dll.so => 203
	i64 u0x8ed3cdd722b4d782, ; 538: System.Diagnostics.EventLog => 208
	i64 u0x8f44b45eb046bbd1, ; 539: System.ServiceModel.Web.dll => 132
	i64 u0x8fbf5b0114c6dcef, ; 540: System.Globalization.dll => 42
	i64 u0x90263f8448b8f572, ; 541: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 542: _Microsoft.Android.Resource.Designer => 326
	i64 u0x90393bd4865292f3, ; 543: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 544: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 545: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 294
	i64 u0x91418dc638b29e68, ; 546: lib_Xamarin.AndroidX.CustomView.dll.so => 275
	i64 u0x914647982e998267, ; 547: Microsoft.Extensions.Configuration.Json => 182
	i64 u0x9157bd523cd7ed36, ; 548: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 549: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 550: System.ServiceModel.Web => 132
	i64 u0x92054e486c0c7ea7, ; 551: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 552: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92b138fffca2b01e, ; 553: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 261
	i64 u0x9388aad9b7ae40ce, ; 554: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 287
	i64 u0x941c00d21e5c0679, ; 555: lib_Xamarin.AndroidX.Transition.dll.so => 308
	i64 u0x944077d8ca3c6580, ; 556: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 557: System.Xml => 164
	i64 u0x94c8990839c4bdb1, ; 558: lib_Xamarin.AndroidX.Interpolator.dll.so => 283
	i64 u0x95aea98e066bba1c, ; 559: Uno.UI.dll => 248
	i64 u0x96a408fb493baf48, ; 560: Uno.Foundation.Logging => 220
	i64 u0x97b8c771ea3e4220, ; 561: System.ComponentModel.dll => 18
	i64 u0x97c770e43b1ab242, ; 562: lib_Uno.UI.HotDesign.Abstractions.dll.so => 227
	i64 u0x97e144c9d3c6976e, ; 563: System.Collections.Concurrent.dll => 8
	i64 u0x97e62b58d5c7d5f9, ; 564: lib_Microsoft.Extensions.Logging.Console.dll.so => 196
	i64 u0x9843944103683dd3, ; 565: Xamarin.AndroidX.Core.Core.Ktx => 272
	i64 u0x98d720cc4597562c, ; 566: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 567: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 568: System.Threading.Overlapped.dll => 141
	i64 u0x999cb19e1a04ffd3, ; 569: CommunityToolkit.Mvvm.dll => 175
	i64 u0x9a01b1da98b6ee10, ; 570: Xamarin.AndroidX.Lifecycle.Runtime.dll => 291
	i64 u0x9ae6940b11c02876, ; 571: lib_Xamarin.AndroidX.Window.dll.so => 314
	i64 u0x9b211a749105beac, ; 572: System.Transactions.Local => 150
	i64 u0x9b39a221fa2e112d, ; 573: Uno.UI.HotDesign.Xaml.Interactivity => 236
	i64 u0x9b7b70725f2d62d4, ; 574: lib_Uno.dll.so => 250
	i64 u0x9b8734714671022d, ; 575: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 576: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 324
	i64 u0x9bd8cc74558ad4c7, ; 577: Xamarin.KotlinX.AtomicFU => 321
	i64 u0x9c244ac7cda32d26, ; 578: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 579: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 323
	i64 u0x9c7f1a3efd4244b8, ; 580: Uno.Material.WinUI.dll => 221
	i64 u0x9c8f6872beab6408, ; 581: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 582: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 583: Xamarin.AndroidX.CustomView.PoolingContainer => 276
	i64 u0x9d5dbcf5a48583fe, ; 584: lib_Xamarin.AndroidX.Activity.dll.so => 254
	i64 u0x9d74dee1a7725f34, ; 585: Microsoft.Extensions.Configuration.Abstractions.dll => 177
	i64 u0x9e4b95dec42769f7, ; 586: System.Diagnostics.Debug.dll => 26
	i64 u0x9ef542cf1f78c506, ; 587: Xamarin.AndroidX.Lifecycle.LiveData.Core => 289
	i64 u0x9fbb2961ca18e5c2, ; 588: Microsoft.Extensions.FileProviders.Physical.dll => 189
	i64 u0x9fefe41b8c9e0f3b, ; 589: Uno.UI.HotDesign.Messaging.dll => 232
	i64 u0xa00832eb975f56a8, ; 590: lib_System.Net.dll.so => 82
	i64 u0xa0ad78236b7b267f, ; 591: Xamarin.AndroidX.Window => 314
	i64 u0xa0d8259f4cc284ec, ; 592: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0ff9b3e34d92f11, ; 593: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 594: System.Threading.Timer.dll => 148
	i64 u0xa1421cc8ece3d2f1, ; 595: Uno.UI.HotDesign.Xaml.Interactions => 235
	i64 u0xa1440773ee9d341e, ; 596: Xamarin.Google.Android.Material => 316
	i64 u0xa2572680829d2c7c, ; 597: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 598: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 599: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 600: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 601: System.Dynamic.Runtime.dll => 37
	i64 u0xa3f90f5dc6f49882, ; 602: Uno.Fonts.OpenSans.dll => 218
	i64 u0xa4145becdee3dc4f, ; 603: Xamarin.AndroidX.VectorDrawable.Animated => 310
	i64 u0xa4a372eecb9e4df0, ; 604: Microsoft.Extensions.Diagnostics => 186
	i64 u0xa4b9d11b424dfbf2, ; 605: Uno.UI.FluentTheme.v1 => 245
	i64 u0xa4d20d2ff0563d26, ; 606: lib_CommunityToolkit.Mvvm.dll.so => 175
	i64 u0xa4edc8f2ceae241a, ; 607: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 608: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 609: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 610: Xamarin.AndroidX.DocumentFile => 277
	i64 u0xa5b7152421ed6d98, ; 611: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 612: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 613: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 614: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 615: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 616: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa63d0790069d0bed, ; 617: Uno.Foundation.dll => 240
	i64 u0xa66cbee0130865f7, ; 618: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 619: Xamarin.AndroidX.SavedState.dll => 303
	i64 u0xa68a420042bb9b1f, ; 620: Xamarin.AndroidX.DrawerLayout.dll => 278
	i64 u0xa69145b0b6a6c496, ; 621: lib_Uno.Toolkit.WinUI.Material.dll.so => 225
	i64 u0xa75386b5cb9595aa, ; 622: Xamarin.AndroidX.Lifecycle.Runtime.Android => 292
	i64 u0xa763fbb98df8d9fb, ; 623: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa7841fd16006e4e7, ; 624: Uno.UI.FluentTheme.dll => 244
	i64 u0xa78ce3745383236a, ; 625: Xamarin.AndroidX.Lifecycle.Common.Jvm => 288
	i64 u0xa7eab29ed44b4e7a, ; 626: Mono.Android.Export => 170
	i64 u0xa7f28c26235ca0e4, ; 627: Microsoft.Extensions.Logging.EventSource => 199
	i64 u0xa8195217cbf017b7, ; 628: Microsoft.VisualBasic.Core => 2
	i64 u0xa82fd211eef00a5b, ; 629: Microsoft.Extensions.FileProviders.Physical => 189
	i64 u0xa8b4642f88b652dd, ; 630: Habits => 0
	i64 u0xa8b52f21e0dbe690, ; 631: System.Runtime.Serialization.dll => 116
	i64 u0xa8ee4ed7de2efaee, ; 632: Xamarin.AndroidX.Annotation.dll => 255
	i64 u0xa95590e7c57438a4, ; 633: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 634: Microsoft.Extensions.Logging.Abstractions => 194
	i64 u0xaa37ba936fe63a35, ; 635: lib_Uno.Core.Extensions.Logging.dll.so => 212
	i64 u0xaa443ac34067eeef, ; 636: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 637: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 638: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 639: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 185
	i64 u0xab9af77b5b67a0b8, ; 640: Xamarin.AndroidX.ConstraintLayout.Core => 269
	i64 u0xab9c1b2687d86b0b, ; 641: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac0f30d94c068d66, ; 642: Uno.Xaml => 249
	i64 u0xac2af3fa195a15ce, ; 643: System.Runtime.Numerics => 111
	i64 u0xac5376a2a538dc10, ; 644: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 289
	i64 u0xac5acae88f60357e, ; 645: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 646: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 647: System.Xml.XDocument => 159
	i64 u0xacdd9e4180d56dda, ; 648: Xamarin.AndroidX.Concurrent.Futures => 267
	i64 u0xacf42eea7ef9cd12, ; 649: System.Threading.Channels => 140
	i64 u0xad7e82ed3b0f16d0, ; 650: lib_Xamarin.AndroidX.DocumentFile.dll.so => 277
	i64 u0xadbb53caf78a79d2, ; 651: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 652: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadf4cf30debbeb9a, ; 653: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 654: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 655: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 656: Java.Interop => 169
	i64 u0xae31ed372ac8c4cf, ; 657: lib_Uno.UI.HotDesign.Client.dll.so => 229
	i64 u0xae53579c90db1107, ; 658: System.ObjectModel.dll => 85
	i64 u0xaec7c0c7e2ed4575, ; 659: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 322
	i64 u0xaf732d0b2193b8f5, ; 660: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xaf7d4166c4304223, ; 661: Uno.UI.Composition.dll => 242
	i64 u0xaf9c4f550f1dfc36, ; 662: Xamarin.AndroidX.AsyncLayoutInflater => 262
	i64 u0xafc06a67bec4f1bf, ; 663: lib_Uno.UI.Composition.dll.so => 242
	i64 u0xafe29f45095518e7, ; 664: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 295
	i64 u0xafe8e4d1ae2a2c43, ; 665: lib_Microsoft.Extensions.Configuration.EnvironmentVariables.dll.so => 180
	i64 u0xb03ae931fb25607e, ; 666: Xamarin.AndroidX.ConstraintLayout => 268
	i64 u0xb0bb43dc52ea59f9, ; 667: System.Diagnostics.Tracing.dll => 34
	i64 u0xb10eef93822a91f0, ; 668: lib_Microsoft.Extensions.Hosting.dll.so => 191
	i64 u0xb1dd05401aa8ee63, ; 669: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 670: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 671: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 672: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb3874072ee0ecf8c, ; 673: Xamarin.AndroidX.VectorDrawable.Animated.dll => 310
	i64 u0xb3aa4fc3d77a571c, ; 674: Microsoft.Extensions.Hosting => 191
	i64 u0xb3f0a0fcda8d3ebc, ; 675: Xamarin.AndroidX.CardView => 264
	i64 u0xb4bd7015ecee9d86, ; 676: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 677: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ff710863453fda, ; 678: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb5c38bf497a4cfe2, ; 679: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 680: Microsoft.Extensions.Logging.Abstractions.dll => 194
	i64 u0xb5ea31d5244c6626, ; 681: System.Threading.ThreadPool.dll => 147
	i64 u0xb64b14a20f4a5b5d, ; 682: lib_Uno.UI.HotDesign.dll.so => 238
	i64 u0xb64c147353266789, ; 683: Uno.UI.RemoteControl.dll => 251
	i64 u0xb7212c4683a94afe, ; 684: System.Drawing.Primitives => 35
	i64 u0xb76fec8889890d92, ; 685: lib_Xamarin.AndroidX.Core.SplashScreen.dll.so => 273
	i64 u0xb81a2c6e0aee50fe, ; 686: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8b0a9b3dfbc5cb7, ; 687: Xamarin.AndroidX.Window.Extensions.Core.Core => 315
	i64 u0xb8c60af47c08d4da, ; 688: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 689: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 690: Microsoft.CSharp.dll => 1
	i64 u0xb9b8001adf4ed7cc, ; 691: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 304
	i64 u0xba4670aa94a2b3c6, ; 692: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 693: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 694: lib_System.Windows.dll.so => 155
	i64 u0xbb272a43608ae0e8, ; 695: Microsoft.Extensions.Configuration.EnvironmentVariables => 180
	i64 u0xbb286883bc35db36, ; 696: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 697: System.Net.Sockets => 76
	i64 u0xbb6cecb7d9fc68d7, ; 698: SkiaSharp.Skottie => 206
	i64 u0xbba28979413cad9e, ; 699: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 700: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc260cdba33291a3, ; 701: Xamarin.AndroidX.Arch.Core.Common.dll => 260
	i64 u0xbce1d9f3fda5f9b6, ; 702: Uno.Toolkit.WinUI.dll => 224
	i64 u0xbd0e2c0d55246576, ; 703: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 704: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 705: Xamarin.AndroidX.ViewPager2 => 313
	i64 u0xbd4f572d2bd0a789, ; 706: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 707: lib_Xamarin.AndroidX.Browser.dll.so => 263
	i64 u0xbd877b14d0b56392, ; 708: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe04c77645f06233, ; 709: Microsoft.Extensions.Logging.Configuration => 195
	i64 u0xbe65a49036345cf4, ; 710: lib_System.Buffers.dll.so => 7
	i64 u0xbea5dd3dab982a58, ; 711: Uno.UI.Toolkit.dll => 247
	i64 u0xbee38d4a88835966, ; 712: Xamarin.AndroidX.AppCompat.AppCompatResources => 259
	i64 u0xbef9919db45b4ca7, ; 713: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 714: lib_Xamarin.AndroidX.Annotation.dll.so => 255
	i64 u0xbfc1e1fb3095f2b3, ; 715: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xbfc455f43efd8f21, ; 716: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 284
	i64 u0xc07cadab29efeba0, ; 717: Xamarin.AndroidX.Core.Core.Ktx.dll => 272
	i64 u0xc0d928351ab5ca77, ; 718: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 719: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 720: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 721: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 722: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 723: Xamarin.AndroidX.Activity.dll => 254
	i64 u0xc25755fc164040b8, ; 724: Uno.UI.HotDesign.dll => 238
	i64 u0xc26c064effb1dea9, ; 725: System.Buffers.dll => 7
	i64 u0xc27a0dbe1ae51104, ; 726: Microsoft.Extensions.Configuration.EnvironmentVariables.dll => 180
	i64 u0xc2902f6cf5452577, ; 727: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 728: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 729: Xamarin.AndroidX.ViewPager2.dll => 313
	i64 u0xc308f6b20c694373, ; 730: lib_Uno.UI.HotDesign.Client.Core.dll.so => 228
	i64 u0xc30b52815b58ac2c, ; 731: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc30e216f42f9c081, ; 732: Uno.UI.FluentTheme.v2.dll => 246
	i64 u0xc35d73df3cf0bcc2, ; 733: lib_Microsoft.Extensions.Logging.EventSource.dll.so => 199
	i64 u0xc36d7d89c652f455, ; 734: System.Threading.Overlapped => 141
	i64 u0xc3c86c1e5e12f03d, ; 735: WindowsBase => 166
	i64 u0xc3c93b190799ed2a, ; 736: lib_Uno.Fonts.Roboto.dll.so => 219
	i64 u0xc421b61fd853169d, ; 737: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 738: System.Runtime.Serialization.Json => 113
	i64 u0xc4acfa192235f49c, ; 739: Uno.UI.Lottie => 253
	i64 u0xc4d3858ed4d08512, ; 740: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 295
	i64 u0xc4d459336da7464d, ; 741: Uno.Fonts.Roboto => 219
	i64 u0xc50fded0ded1418c, ; 742: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 743: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5325b2fcb37446f, ; 744: lib_System.Private.Xml.dll.so => 89
	i64 u0xc560ed0a5d4290b7, ; 745: Uno.UI.Lottie.dll => 253
	i64 u0xc5a0f4b95a699af7, ; 746: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 747: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 748: Xamarin.AndroidX.Tracing.Tracing => 307
	i64 u0xc659b586d4c229e2, ; 749: Microsoft.Extensions.Configuration.FileExtensions.dll => 181
	i64 u0xc6706bc8aa7fe265, ; 750: Xamarin.AndroidX.Annotation.Jvm => 257
	i64 u0xc7c01e7d7c93a110, ; 751: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7c23499e19bc0e8, ; 752: Uno.Core.Extensions.Logging.Singleton.dll => 213
	i64 u0xc7ce851898a4548e, ; 753: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 754: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 755: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 756: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc931411ad5c0b93a, ; 757: Uno.UI.HotDesign.Hierarchy => 231
	i64 u0xc9c62c8f354ac568, ; 758: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca0bef579a9cf029, ; 759: Uno.UI.HotDesign.Client => 229
	i64 u0xca5801070d9fccfb, ; 760: System.Text.Encoding => 136
	i64 u0xca5f451f0eb31b61, ; 761: lib_Uno.UI.FluentTheme.v2.dll.so => 246
	i64 u0xcadbc92899a777f0, ; 762: Xamarin.AndroidX.Startup.StartupRuntime => 305
	i64 u0xcb30a17ded08477c, ; 763: Uno.Core.Extensions.Logging => 212
	i64 u0xcb9f74e7e7336118, ; 764: Uno.UI.HotDesign.PropertyGrid => 233
	i64 u0xcbb5f80c7293e696, ; 765: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 766: lib__Microsoft.Android.Resource.Designer.dll.so => 326
	i64 u0xcc15da1e07bbd994, ; 767: Xamarin.AndroidX.SlidingPaneLayout => 304
	i64 u0xcc2876b32ef2794c, ; 768: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 769: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 325
	i64 u0xcc9fa2923aa1c9ef, ; 770: System.Diagnostics.Contracts.dll => 25
	i64 u0xcd10a42808629144, ; 771: System.Net.Requests => 73
	i64 u0xcd46ae40d29b04d1, ; 772: UniversalImageLoader => 239
	i64 u0xcdca1b920e9f53ba, ; 773: Xamarin.AndroidX.Interpolator => 283
	i64 u0xcdd0c48b6937b21c, ; 774: Xamarin.AndroidX.SwipeRefreshLayout => 306
	i64 u0xcf23d8093f3ceadf, ; 775: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf3a9996a625b6e2, ; 776: Microsoft.Extensions.Logging.Configuration.dll => 195
	i64 u0xcf5ff6b6b2c4c382, ; 777: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 778: System.Private.Xml.Linq => 88
	i64 u0xd04890efc9deb2e0, ; 779: lib_Uno.Foundation.Logging.dll.so => 220
	i64 u0xd04b5f59ed596e31, ; 780: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 781: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd0de8a113e976700, ; 782: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 783: System.Runtime.Extensions => 104
	i64 u0xd10d5932534af399, ; 784: CommonServiceLocator => 174
	i64 u0xd1194e1d8a8de83c, ; 785: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 288
	i64 u0xd12beacdfc14f696, ; 786: System.Dynamic.Runtime => 37
	i64 u0xd16fd7fb9bbcd43e, ; 787: Microsoft.Extensions.Diagnostics.Abstractions => 187
	i64 u0xd198e7ce1b6a8344, ; 788: System.Net.Quic.dll => 72
	i64 u0xd23f43eaa6c25c64, ; 789: Xamarin.AndroidX.Media.dll => 298
	i64 u0xd3144156a3727ebe, ; 790: Xamarin.Google.Guava.ListenableFuture => 318
	i64 u0xd31c38eda695a815, ; 791: Uno.UI.BindingHelper.Android => 241
	i64 u0xd333d0af9e423810, ; 792: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 793: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd33afc69c2e5e4f5, ; 794: Uno.Toolkit.WinUI => 224
	i64 u0xd3426d966bb704f5, ; 795: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 259
	i64 u0xd3651b6fc3125825, ; 796: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 797: Microsoft.Extensions.Logging.dll => 193
	i64 u0xd3801faafafb7698, ; 798: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3edcc1f25459a50, ; 799: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 800: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 185
	i64 u0xd4fa0abb79079ea9, ; 801: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 802: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 295
	i64 u0xd5a2778f5584fa3b, ; 803: SkiaSharp.Skottie.dll => 206
	i64 u0xd5d04bef8478ea19, ; 804: Xamarin.AndroidX.Tracing.Tracing.dll => 307
	i64 u0xd60815f26a12e140, ; 805: Microsoft.Extensions.Logging.Debug.dll => 197
	i64 u0xd6694f8359737e4e, ; 806: Xamarin.AndroidX.SavedState => 303
	i64 u0xd6817965e6a4f6f9, ; 807: lib_Uno.Material.WinUI.dll.so => 221
	i64 u0xd6949e129339eae5, ; 808: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 272
	i64 u0xd6c63d7094e9738d, ; 809: lib_Uno.UI.FluentTheme.dll.so => 244
	i64 u0xd6d21782156bc35b, ; 810: Xamarin.AndroidX.SwipeRefreshLayout.dll => 306
	i64 u0xd6de019f6af72435, ; 811: Xamarin.AndroidX.ConstraintLayout.Core.dll => 269
	i64 u0xd72329819cbbbc44, ; 812: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 177
	i64 u0xd72c760af136e863, ; 813: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 814: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 815: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 194
	i64 u0xd7f0088bc5ad71f2, ; 816: Xamarin.AndroidX.VersionedParcelable => 311
	i64 u0xd82c7682756bef81, ; 817: SkiaSharp.Views.Windows => 207
	i64 u0xd8fb25e28ae30a12, ; 818: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 300
	i64 u0xd961b5933473042b, ; 819: Uno.UI.HotDesign => 238
	i64 u0xda1dfa4c534a9251, ; 820: Microsoft.Extensions.DependencyInjection => 184
	i64 u0xdab32c1c8855e7d2, ; 821: Uno.UI.HotDesign.Client.Core.dll => 228
	i64 u0xdad05a11827959a3, ; 822: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 823: System.IO.FileSystem.Primitives => 49
	i64 u0xdb58816721c02a59, ; 824: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdb9683457b910f32, ; 825: Uno.Material.WinUI => 221
	i64 u0xdbef3561b7718883, ; 826: Uno.UI.Adapter.Microsoft.Extensions.Logging.dll => 226
	i64 u0xdbf2a779fbc3ac31, ; 827: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 828: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 829: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc42cfae1d79e9d1, ; 830: Uno.Core.Extensions.Logging.dll => 212
	i64 u0xdc4e2bc401dc6de6, ; 831: Uno.Extensions.Core.UI => 216
	i64 u0xdc75032002d1a212, ; 832: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 833: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 834: Microsoft.Extensions.Logging => 193
	i64 u0xdd2b722d78ef5f43, ; 835: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 836: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 837: System.Numerics.dll => 84
	i64 u0xdddcdd701e911af1, ; 838: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 285
	i64 u0xde110ae80fa7c2e2, ; 839: System.Xml.XDocument.dll => 159
	i64 u0xde327cd8af0a2cbc, ; 840: lib_Microsoft.Extensions.Configuration.CommandLine.dll.so => 179
	i64 u0xde4726fcdf63a198, ; 841: Xamarin.AndroidX.Transition => 308
	i64 u0xde572c2b2fb32f93, ; 842: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xdf13b7ed800135c0, ; 843: lib_Habits.dll.so => 0
	i64 u0xdf3b81f65864db44, ; 844: Microsoft.Extensions.Configuration.UserSecrets.dll => 183
	i64 u0xdf4b773de8fb1540, ; 845: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 846: System.Net.Ping => 70
	i64 u0xe0142572c095a480, ; 847: Xamarin.AndroidX.AppCompat.dll => 258
	i64 u0xe021eaa401792a05, ; 848: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 849: Xamarin.AndroidX.CoordinatorLayout.dll => 270
	i64 u0xe097285d3875c47d, ; 850: Uno.Fonts.Fluent => 217
	i64 u0xe0e2d27292831dcc, ; 851: Uno.UI.HotDesign.Xaml => 237
	i64 u0xe0f282c49dd6bd0a, ; 852: Xamarin.AndroidX.Media => 298
	i64 u0xe10b760bb1462e7a, ; 853: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe14f5dc87508763a, ; 854: Uno.Toolkit.WinUI.Material => 225
	i64 u0xe192a588d4410686, ; 855: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 856: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 857: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 858: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 859: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 860: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 861: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 862: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe24095a7afddaab3, ; 863: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 192
	i64 u0xe2420585aeceb728, ; 864: System.Net.Requests.dll => 73
	i64 u0xe2ad448dee50fbdf, ; 865: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 866: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 867: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 868: Mono.Android.Export.dll => 170
	i64 u0xe3b7cbae5ad66c75, ; 869: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe415854e7ac717bf, ; 870: Uno => 250
	i64 u0xe4f74a0b5bf9703f, ; 871: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 872: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 873: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 874: Microsoft.VisualBasic => 3
	i64 u0xe5a86e0c11dca2ba, ; 875: lib_Xamarin.AndroidX.AsyncLayoutInflater.dll.so => 262
	i64 u0xe5d3abc39882176f, ; 876: Uno.Themes.WinUI => 222
	i64 u0xe606eaeeff126ee6, ; 877: lib_Uno.Toolkit.dll.so => 223
	i64 u0xe62913cc36bc07ec, ; 878: System.Xml.dll => 164
	i64 u0xe63ad56dcb91c664, ; 879: lib_Uno.UI.HotDesign.Xaml.dll.so => 237
	i64 u0xe7bea09c4900a191, ; 880: Xamarin.AndroidX.VectorDrawable.dll => 309
	i64 u0xe7e03cc18dcdeb49, ; 881: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 882: lib_System.Configuration.dll.so => 19
	i64 u0xe8397cf3948e7cb7, ; 883: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 201
	i64 u0xe86b0df4ba9e5db8, ; 884: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 292
	i64 u0xe896622fe0902957, ; 885: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 886: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 887: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 888: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 315
	i64 u0xe98163eb702ae5c5, ; 889: Xamarin.AndroidX.Arch.Core.Runtime => 261
	i64 u0xe994f23ba4c143e5, ; 890: Xamarin.KotlinX.Coroutines.Android => 323
	i64 u0xe9b9c8c0458fd92a, ; 891: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 892: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 305
	i64 u0xea5a4efc2ad81d1b, ; 893: Xamarin.Google.ErrorProne.Annotations => 317
	i64 u0xeb2313fe9d65b785, ; 894: Xamarin.AndroidX.ConstraintLayout.dll => 268
	i64 u0xeb6e275e78cb8d42, ; 895: Xamarin.AndroidX.LocalBroadcastManager.dll => 297
	i64 u0xec47091de17c49a6, ; 896: Uno.UI.HotDesign.PropertyGrid.dll => 233
	i64 u0xecf5eb577a23c9c6, ; 897: SkiaSharp.SceneGraph => 205
	i64 u0xed1581e8b74d657f, ; 898: Uno.Foundation => 240
	i64 u0xed19c616b3fcb7eb, ; 899: Xamarin.AndroidX.VersionedParcelable.dll => 311
	i64 u0xed6ef763c6fb395f, ; 900: System.Diagnostics.EventLog.dll => 208
	i64 u0xedc4817167106c23, ; 901: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 902: System.Memory.dll => 63
	i64 u0xee81f5b3f1c4f83b, ; 903: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 904: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 266
	i64 u0xeefc635595ef57f0, ; 905: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 906: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 907: Xamarin.AndroidX.Print => 299
	i64 u0xef602c523fe2e87a, ; 908: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 318
	i64 u0xefd1e0c4e5c9b371, ; 909: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 910: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 911: Xamarin.AndroidX.Activity => 254
	i64 u0xf09e47b6ae914f6e, ; 912: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 913: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb3be9a4d1cca1, ; 914: lib_Uno.UI.HotDesign.Messaging.dll.so => 232
	i64 u0xf0bb49dadd3a1fe1, ; 915: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 916: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 917: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 291
	i64 u0xf161f4f3c3b7e62c, ; 918: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 919: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 920: System.Formats.Asn1.dll => 38
	i64 u0xf2feea356ba760af, ; 921: Xamarin.AndroidX.Arch.Core.Runtime.dll => 261
	i64 u0xf300e085f8acd238, ; 922: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 923: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 924: lib_Xamarin.Google.Android.Material.dll.so => 316
	i64 u0xf3ad9b8fb3eefd12, ; 925: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 926: System => 165
	i64 u0xf408654b2a135055, ; 927: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 928: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 929: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4727d423e5d26f3, ; 930: SkiaSharp => 204
	i64 u0xf4c1dd70a5496a17, ; 931: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 932: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 933: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 276
	i64 u0xf518f63ead11fcd1, ; 934: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 935: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 936: Xamarin.AndroidX.CoordinatorLayout => 270
	i64 u0xf6742cbf457c450b, ; 937: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 292
	i64 u0xf6abefb663f82926, ; 938: Uno.UI.HotDesign.Client.dll => 229
	i64 u0xf6de7fa3776f8927, ; 939: lib_Microsoft.Extensions.Configuration.Json.dll.so => 182
	i64 u0xf6e9ed5983c08f64, ; 940: Microsoft.Extensions.Configuration.CommandLine.dll => 179
	i64 u0xf6f893f692f8cb43, ; 941: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 201
	i64 u0xf70c0a7bf8ccf5af, ; 942: System.Web => 154
	i64 u0xf727d83c50eea94d, ; 943: lib_SkiaSharp.Skottie.dll.so => 206
	i64 u0xf7dc71948ede9063, ; 944: Uno.Core.Extensions.Collections => 209
	i64 u0xf7e2cac4c45067b3, ; 945: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7fa0bf77fe677cc, ; 946: Newtonsoft.Json.dll => 203
	i64 u0xf8aac5ea82de1348, ; 947: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 948: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 949: lib_Xamarin.AndroidX.RecyclerView.dll.so => 301
	i64 u0xf915dc29808193a1, ; 950: System.Web.HttpUtility.dll => 153
	i64 u0xf9be54c8bcf8ff3b, ; 951: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 952: Microsoft.Extensions.Options => 200
	i64 u0xfa0e82300e67f913, ; 953: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 954: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 955: lib_System.Net.Security.dll.so => 74
	i64 u0xfa504dfa0f097d72, ; 956: Microsoft.Extensions.FileProviders.Abstractions.dll => 188
	i64 u0xfa645d91e9fc4cba, ; 957: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 958: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 959: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 960: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 961: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 962: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 963: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 964: Xamarin.AndroidX.LocalBroadcastManager => 297
	i64 u0xfc6b7527cc280b3f, ; 965: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc82690c2fe2735c, ; 966: Xamarin.AndroidX.Lifecycle.Process.dll => 290
	i64 u0xfc93fc307d279893, ; 967: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 968: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 969: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 278
	i64 u0xfd49b3c1a76e2748, ; 970: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 971: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 972: Xamarin.AndroidX.Fragment => 282
	i64 u0xfd8dd91a2c26bd5d, ; 973: Xamarin.AndroidX.Lifecycle.Runtime => 291
	i64 u0xfda36abccf05cf5c, ; 974: System.Net.WebSockets.Client => 80
	i64 u0xfddbe9695626a7f5, ; 975: Xamarin.AndroidX.Lifecycle.Common => 287
	i64 u0xfe9856c3af9365ab, ; 976: lib_Microsoft.Extensions.Configuration.FileExtensions.dll.so => 181
	i64 u0xfeae2042eb0e053f, ; 977: Uno.UI.BindingHelper.Android.dll => 241
	i64 u0xff270a55858bac8d, ; 978: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 979: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73 ; 980: System.ValueTuple.dll => 152
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [981 x i32] [
	i32 42, i32 324, i32 306, i32 13, i32 201, i32 105, i32 171, i32 48,
	i32 258, i32 7, i32 86, i32 174, i32 279, i32 71, i32 301, i32 12,
	i32 102, i32 210, i32 156, i32 19, i32 266, i32 161, i32 214, i32 281,
	i32 309, i32 167, i32 239, i32 10, i32 197, i32 310, i32 96, i32 276,
	i32 278, i32 13, i32 200, i32 10, i32 127, i32 95, i32 140, i32 39,
	i32 312, i32 196, i32 172, i32 5, i32 67, i32 209, i32 130, i32 233,
	i32 183, i32 280, i32 68, i32 66, i32 231, i32 57, i32 275, i32 52,
	i32 230, i32 43, i32 125, i32 216, i32 67, i32 81, i32 158, i32 92,
	i32 99, i32 301, i32 141, i32 214, i32 151, i32 263, i32 162, i32 169,
	i32 185, i32 81, i32 4, i32 5, i32 220, i32 208, i32 51, i32 101,
	i32 56, i32 120, i32 98, i32 168, i32 118, i32 218, i32 324, i32 21,
	i32 228, i32 137, i32 97, i32 77, i32 299, i32 305, i32 119, i32 211,
	i32 8, i32 165, i32 70, i32 226, i32 302, i32 186, i32 189, i32 171,
	i32 145, i32 40, i32 47, i32 30, i32 144, i32 200, i32 163, i32 28,
	i32 84, i32 307, i32 284, i32 77, i32 43, i32 235, i32 29, i32 42,
	i32 103, i32 117, i32 256, i32 45, i32 213, i32 91, i32 56, i32 249,
	i32 148, i32 242, i32 146, i32 100, i32 49, i32 20, i32 271, i32 286,
	i32 114, i32 286, i32 320, i32 202, i32 94, i32 58, i32 81, i32 169,
	i32 26, i32 71, i32 248, i32 217, i32 300, i32 187, i32 204, i32 69,
	i32 33, i32 14, i32 139, i32 38, i32 190, i32 267, i32 262, i32 195,
	i32 134, i32 92, i32 88, i32 149, i32 24, i32 138, i32 57, i32 51,
	i32 29, i32 157, i32 34, i32 164, i32 218, i32 252, i32 282, i32 52,
	i32 205, i32 326, i32 314, i32 90, i32 225, i32 264, i32 35, i32 157,
	i32 190, i32 219, i32 9, i32 76, i32 55, i32 247, i32 215, i32 224,
	i32 13, i32 313, i32 176, i32 260, i32 109, i32 32, i32 104, i32 84,
	i32 245, i32 92, i32 53, i32 239, i32 96, i32 319, i32 58, i32 9,
	i32 102, i32 244, i32 275, i32 68, i32 312, i32 203, i32 188, i32 198,
	i32 125, i32 302, i32 116, i32 135, i32 230, i32 126, i32 106, i32 320,
	i32 131, i32 263, i32 318, i32 183, i32 147, i32 156, i32 271, i32 181,
	i32 279, i32 231, i32 302, i32 97, i32 24, i32 304, i32 143, i32 192,
	i32 299, i32 3, i32 167, i32 259, i32 100, i32 161, i32 99, i32 25,
	i32 93, i32 168, i32 172, i32 3, i32 281, i32 199, i32 196, i32 1,
	i32 226, i32 114, i32 320, i32 290, i32 33, i32 6, i32 211, i32 207,
	i32 156, i32 236, i32 232, i32 53, i32 285, i32 85, i32 311, i32 179,
	i32 44, i32 210, i32 104, i32 47, i32 138, i32 240, i32 64, i32 296,
	i32 69, i32 80, i32 59, i32 89, i32 154, i32 260, i32 133, i32 110,
	i32 296, i32 300, i32 171, i32 134, i32 140, i32 40, i32 178, i32 60,
	i32 175, i32 178, i32 294, i32 79, i32 25, i32 36, i32 99, i32 71,
	i32 22, i32 271, i32 121, i32 69, i32 107, i32 297, i32 119, i32 235,
	i32 117, i32 287, i32 288, i32 11, i32 2, i32 124, i32 115, i32 205,
	i32 142, i32 41, i32 87, i32 243, i32 255, i32 173, i32 192, i32 27,
	i32 148, i32 178, i32 184, i32 317, i32 246, i32 1, i32 256, i32 44,
	i32 270, i32 149, i32 210, i32 215, i32 234, i32 285, i32 18, i32 86,
	i32 41, i32 265, i32 94, i32 193, i32 28, i32 41, i32 207, i32 78,
	i32 280, i32 247, i32 267, i32 144, i32 108, i32 266, i32 11, i32 105,
	i32 137, i32 16, i32 122, i32 66, i32 157, i32 22, i32 102, i32 184,
	i32 325, i32 63, i32 215, i32 248, i32 58, i32 214, i32 110, i32 173,
	i32 198, i32 323, i32 9, i32 316, i32 120, i32 98, i32 105, i32 249,
	i32 111, i32 257, i32 49, i32 0, i32 20, i32 294, i32 274, i32 72,
	i32 198, i32 269, i32 251, i32 155, i32 39, i32 35, i32 321, i32 252,
	i32 38, i32 315, i32 108, i32 245, i32 21, i32 319, i32 293, i32 15,
	i32 202, i32 79, i32 79, i32 274, i32 202, i32 277, i32 191, i32 237,
	i32 152, i32 21, i32 217, i32 250, i32 50, i32 51, i32 251, i32 298,
	i32 94, i32 223, i32 236, i32 187, i32 16, i32 123, i32 160, i32 45,
	i32 317, i32 116, i32 63, i32 166, i32 186, i32 273, i32 243, i32 176,
	i32 14, i32 303, i32 111, i32 257, i32 60, i32 322, i32 182, i32 121,
	i32 2, i32 243, i32 282, i32 293, i32 321, i32 293, i32 6, i32 265,
	i32 279, i32 17, i32 252, i32 77, i32 268, i32 273, i32 253, i32 131,
	i32 319, i32 83, i32 174, i32 197, i32 12, i32 34, i32 119, i32 290,
	i32 281, i32 85, i32 18, i32 312, i32 241, i32 177, i32 289, i32 72,
	i32 284, i32 95, i32 165, i32 283, i32 82, i32 222, i32 286, i32 258,
	i32 264, i32 322, i32 154, i32 36, i32 151, i32 144, i32 56, i32 113,
	i32 204, i32 265, i32 213, i32 309, i32 308, i32 37, i32 176, i32 115,
	i32 190, i32 256, i32 14, i32 146, i32 43, i32 98, i32 325, i32 234,
	i32 222, i32 168, i32 16, i32 48, i32 107, i32 209, i32 223, i32 97,
	i32 227, i32 296, i32 211, i32 27, i32 128, i32 216, i32 29, i32 234,
	i32 227, i32 230, i32 188, i32 128, i32 44, i32 274, i32 280, i32 149,
	i32 8, i32 203, i32 208, i32 132, i32 42, i32 33, i32 326, i32 46,
	i32 143, i32 294, i32 275, i32 182, i32 138, i32 62, i32 132, i32 48,
	i32 160, i32 261, i32 287, i32 308, i32 46, i32 164, i32 283, i32 248,
	i32 220, i32 18, i32 227, i32 8, i32 196, i32 272, i32 124, i32 59,
	i32 141, i32 175, i32 291, i32 314, i32 150, i32 236, i32 250, i32 142,
	i32 324, i32 321, i32 126, i32 323, i32 221, i32 160, i32 162, i32 276,
	i32 254, i32 177, i32 26, i32 289, i32 189, i32 232, i32 82, i32 314,
	i32 127, i32 101, i32 148, i32 235, i32 316, i32 54, i32 162, i32 167,
	i32 131, i32 37, i32 218, i32 310, i32 186, i32 245, i32 175, i32 22,
	i32 112, i32 90, i32 277, i32 50, i32 60, i32 122, i32 83, i32 127,
	i32 163, i32 240, i32 166, i32 303, i32 278, i32 225, i32 292, i32 4,
	i32 244, i32 288, i32 170, i32 199, i32 2, i32 189, i32 0, i32 116,
	i32 255, i32 19, i32 194, i32 212, i32 89, i32 65, i32 30, i32 185,
	i32 269, i32 59, i32 249, i32 111, i32 289, i32 32, i32 128, i32 159,
	i32 267, i32 140, i32 277, i32 153, i32 17, i32 75, i32 74, i32 15,
	i32 169, i32 229, i32 85, i32 322, i32 124, i32 242, i32 262, i32 242,
	i32 295, i32 180, i32 268, i32 34, i32 191, i32 118, i32 139, i32 122,
	i32 106, i32 310, i32 191, i32 264, i32 54, i32 47, i32 28, i32 145,
	i32 194, i32 147, i32 238, i32 251, i32 35, i32 273, i32 173, i32 315,
	i32 75, i32 161, i32 1, i32 304, i32 159, i32 12, i32 155, i32 180,
	i32 151, i32 76, i32 206, i32 103, i32 112, i32 260, i32 224, i32 65,
	i32 66, i32 313, i32 45, i32 263, i32 109, i32 195, i32 7, i32 247,
	i32 259, i32 55, i32 255, i32 64, i32 284, i32 272, i32 20, i32 109,
	i32 101, i32 62, i32 142, i32 254, i32 238, i32 7, i32 180, i32 170,
	i32 50, i32 313, i32 228, i32 115, i32 246, i32 199, i32 141, i32 166,
	i32 219, i32 80, i32 113, i32 253, i32 295, i32 219, i32 17, i32 73,
	i32 89, i32 253, i32 87, i32 120, i32 307, i32 181, i32 257, i32 135,
	i32 213, i32 153, i32 106, i32 11, i32 90, i32 231, i32 31, i32 229,
	i32 136, i32 246, i32 305, i32 212, i32 233, i32 40, i32 326, i32 304,
	i32 139, i32 325, i32 25, i32 73, i32 239, i32 283, i32 306, i32 27,
	i32 195, i32 67, i32 88, i32 220, i32 95, i32 113, i32 31, i32 104,
	i32 174, i32 288, i32 37, i32 187, i32 72, i32 298, i32 318, i32 241,
	i32 108, i32 123, i32 224, i32 259, i32 87, i32 193, i32 86, i32 93,
	i32 185, i32 129, i32 295, i32 206, i32 307, i32 197, i32 303, i32 221,
	i32 272, i32 244, i32 306, i32 269, i32 177, i32 163, i32 130, i32 194,
	i32 311, i32 207, i32 300, i32 238, i32 184, i32 228, i32 10, i32 49,
	i32 91, i32 221, i32 226, i32 150, i32 62, i32 136, i32 212, i32 216,
	i32 150, i32 61, i32 193, i32 117, i32 137, i32 84, i32 285, i32 159,
	i32 179, i32 308, i32 143, i32 0, i32 183, i32 82, i32 70, i32 258,
	i32 136, i32 270, i32 217, i32 237, i32 298, i32 125, i32 225, i32 54,
	i32 110, i32 130, i32 88, i32 23, i32 74, i32 129, i32 31, i32 192,
	i32 73, i32 158, i32 23, i32 4, i32 170, i32 123, i32 250, i32 114,
	i32 172, i32 32, i32 3, i32 262, i32 222, i32 223, i32 164, i32 237,
	i32 309, i32 30, i32 19, i32 201, i32 292, i32 93, i32 36, i32 5,
	i32 315, i32 261, i32 323, i32 155, i32 305, i32 317, i32 268, i32 297,
	i32 233, i32 205, i32 240, i32 311, i32 208, i32 76, i32 63, i32 147,
	i32 266, i32 121, i32 134, i32 299, i32 318, i32 100, i32 39, i32 254,
	i32 68, i32 26, i32 232, i32 75, i32 78, i32 291, i32 24, i32 152,
	i32 38, i32 261, i32 133, i32 103, i32 316, i32 57, i32 165, i32 91,
	i32 61, i32 132, i32 204, i32 46, i32 133, i32 276, i32 145, i32 78,
	i32 270, i32 292, i32 229, i32 182, i32 179, i32 201, i32 154, i32 206,
	i32 209, i32 83, i32 203, i32 61, i32 96, i32 301, i32 153, i32 118,
	i32 200, i32 6, i32 15, i32 74, i32 188, i32 146, i32 52, i32 70,
	i32 23, i32 158, i32 126, i32 65, i32 297, i32 112, i32 290, i32 55,
	i32 53, i32 278, i32 107, i32 135, i32 282, i32 291, i32 80, i32 287,
	i32 181, i32 241, i32 129, i32 64, i32 152
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 1719a35b8a0348a4a8dd0061cfc4dd7fe6612a3c"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
