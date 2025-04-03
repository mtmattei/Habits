package crc6422aba90729472dfe;


public class ZoomContentControl
	extends crc6499cc3f8d6dc23bc6.ContentControl
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.Client.Controls.ZoomContentControl, Uno.UI.HotDesign.Client", ZoomContentControl.class, __md_methods);
	}

	public ZoomContentControl (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ZoomContentControl.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.Client.Controls.ZoomContentControl, Uno.UI.HotDesign.Client", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
