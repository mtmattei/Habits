package crc64bad6bab841c07a1a;


public class ProgressRingRefreshVisualizer
	extends crc6499cc3f8d6dc23bc6.RefreshVisualizer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.Xaml.Controls.ProgressRingRefreshVisualizer, Uno.UI", ProgressRingRefreshVisualizer.class, __md_methods);
	}

	public ProgressRingRefreshVisualizer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ProgressRingRefreshVisualizer.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Xaml.Controls.ProgressRingRefreshVisualizer, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
