package crc6402a04929e41c26b9;


public class CornerRadiusEditor
	extends crc6499cc3f8d6dc23bc6.UserControl
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.PropertyGrid.Editors.CornerRadiusEditor, Uno.UI.HotDesign.PropertyGrid", CornerRadiusEditor.class, __md_methods);
	}

	public CornerRadiusEditor (android.content.Context p0)
	{
		super (p0);
		if (getClass () == CornerRadiusEditor.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.PropertyGrid.Editors.CornerRadiusEditor, Uno.UI.HotDesign.PropertyGrid", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
