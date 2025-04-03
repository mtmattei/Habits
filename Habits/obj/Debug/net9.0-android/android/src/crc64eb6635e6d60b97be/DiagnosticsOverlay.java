package crc64eb6635e6d60b97be;


public class DiagnosticsOverlay
	extends crc6499cc3f8d6dc23bc6.Control
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.Diagnostics.UI.DiagnosticsOverlay, Uno.UI.Toolkit", DiagnosticsOverlay.class, __md_methods);
	}

	public DiagnosticsOverlay (android.content.Context p0)
	{
		super (p0);
		if (getClass () == DiagnosticsOverlay.class) {
			mono.android.TypeManager.Activate ("Uno.Diagnostics.UI.DiagnosticsOverlay, Uno.UI.Toolkit", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

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
