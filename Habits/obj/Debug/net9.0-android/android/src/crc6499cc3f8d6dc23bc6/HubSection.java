package crc6499cc3f8d6dc23bc6;


public class HubSection
	extends crc6499cc3f8d6dc23bc6.Control
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.HubSection, Uno.UI", HubSection.class, __md_methods);
	}

	public HubSection (android.content.Context p0)
	{
		super (p0);
		if (getClass () == HubSection.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.HubSection, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
