package crc64f992831d5fe2b256;


public class TabBarListPanel
	extends crc6499cc3f8d6dc23bc6.Panel
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.Toolkit.UI.TabBarListPanel, Uno.Toolkit.WinUI", TabBarListPanel.class, __md_methods);
	}

	public TabBarListPanel (android.content.Context p0)
	{
		super (p0);
		if (getClass () == TabBarListPanel.class) {
			mono.android.TypeManager.Activate ("Uno.Toolkit.UI.TabBarListPanel, Uno.Toolkit.WinUI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
