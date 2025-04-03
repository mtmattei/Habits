package crc647e5bcbc8a5a64444;


public abstract class BaseToolWindowControl
	extends crc6499cc3f8d6dc23bc6.Control
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.HotDesign.BaseToolWindowControl, Uno.UI.HotDesign.Client.Core", BaseToolWindowControl.class, __md_methods);
	}

	public BaseToolWindowControl (android.content.Context p0)
	{
		super (p0);
		if (getClass () == BaseToolWindowControl.class) {
			mono.android.TypeManager.Activate ("Uno.UI.HotDesign.BaseToolWindowControl, Uno.UI.HotDesign.Client.Core", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
