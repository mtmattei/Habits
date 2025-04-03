package crc64f992831d5fe2b256;


public class CompositeLoadableSource
	extends crc64a352b6f848b4d68e.FrameworkElement
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.Toolkit.UI.CompositeLoadableSource, Uno.Toolkit.WinUI", CompositeLoadableSource.class, __md_methods);
	}

	public CompositeLoadableSource (android.content.Context p0)
	{
		super (p0);
		if (getClass () == CompositeLoadableSource.class) {
			mono.android.TypeManager.Activate ("Uno.Toolkit.UI.CompositeLoadableSource, Uno.Toolkit.WinUI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
