package crc6485314a2a4d7fccfc;


public class NativeFramePresenter
	extends crc6499cc3f8d6dc23bc6.Grid
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.Controls.NativeFramePresenter, Uno.UI", NativeFramePresenter.class, __md_methods);
	}

	public NativeFramePresenter (android.content.Context p0)
	{
		super (p0);
		if (getClass () == NativeFramePresenter.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Controls.NativeFramePresenter, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
