package crc64878b6498d7596d5b;


public class GridSplitter
	extends crc64878b6498d7596d5b.SizerBase
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.CommunityToolkit.Controls.GridSplitter, Uno.UI.HotDesign.CommunityToolkit", GridSplitter.class, __md_methods);
	}

	public GridSplitter (android.content.Context p0)
	{
		super (p0);
		if (getClass () == GridSplitter.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.CommunityToolkit.Controls.GridSplitter, Uno.UI.HotDesign.CommunityToolkit", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
