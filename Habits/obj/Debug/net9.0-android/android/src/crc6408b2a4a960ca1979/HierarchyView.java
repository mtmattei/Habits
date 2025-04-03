package crc6408b2a4a960ca1979;


public class HierarchyView
	extends crc647e5bcbc8a5a64444.BaseToolWindowControl
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.Hierarchy.HierarchyView, Uno.UI.HotDesign.Hierarchy", HierarchyView.class, __md_methods);
	}

	public HierarchyView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == HierarchyView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.Hierarchy.HierarchyView, Uno.UI.HotDesign.Hierarchy", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
