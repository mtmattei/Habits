package crc64f0e08e1bcab591ba;


public class PropertyFlyout
	extends crc6499cc3f8d6dc23bc6.ContentDialog
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.PropertyGrid.PropertyFlyout, Uno.UI.HotDesign.PropertyGrid", PropertyFlyout.class, __md_methods);
	}

	public PropertyFlyout (android.content.Context p0)
	{
		super (p0);
		if (getClass () == PropertyFlyout.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.PropertyGrid.PropertyFlyout, Uno.UI.HotDesign.PropertyGrid", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
