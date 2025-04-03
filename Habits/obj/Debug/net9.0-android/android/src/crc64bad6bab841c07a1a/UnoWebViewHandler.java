package crc64bad6bab841c07a1a;


public class UnoWebViewHandler
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_postMessage:(Ljava/lang/String;)V:__export__\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.Xaml.Controls.UnoWebViewHandler, Uno.UI", UnoWebViewHandler.class, __md_methods);
	}

	public UnoWebViewHandler ()
	{
		super ();
		if (getClass () == UnoWebViewHandler.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Xaml.Controls.UnoWebViewHandler, Uno.UI", "", this, new java.lang.Object[] {  });
		}
	}

@android.webkit.JavascriptInterface
	public void postMessage (java.lang.String p0)
	{
		n_postMessage (p0);
	}

	private native void n_postMessage (java.lang.String p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
