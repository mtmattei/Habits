package crc640b72a6ecf3c5b5a8;


public class XamlIslandRootCollection
	extends crc6499cc3f8d6dc23bc6.Panel
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.Xaml.Islands.XamlIslandRootCollection, Uno.UI", XamlIslandRootCollection.class, __md_methods);
	}

	public XamlIslandRootCollection (android.content.Context p0)
	{
		super (p0);
		if (getClass () == XamlIslandRootCollection.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Xaml.Islands.XamlIslandRootCollection, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
