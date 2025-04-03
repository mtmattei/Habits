package crc64d392e0fb406cd4f6;


public class ToolboxView
	extends crc647e5bcbc8a5a64444.BaseToolWindowControl
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.Toolbox.ToolboxView, Uno.UI.HotDesign.Toolbox", ToolboxView.class, __md_methods);
	}

	public ToolboxView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ToolboxView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.Toolbox.ToolboxView, Uno.UI.HotDesign.Toolbox", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
