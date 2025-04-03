package crc64bad6bab841c07a1a;


public class NativeRefreshVisualizer
	extends crc6499cc3f8d6dc23bc6.RefreshVisualizer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.Xaml.Controls.NativeRefreshVisualizer, Uno.UI", NativeRefreshVisualizer.class, __md_methods);
	}

	public NativeRefreshVisualizer (android.content.Context p0)
	{
		super (p0);
		if (getClass () == NativeRefreshVisualizer.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Xaml.Controls.NativeRefreshVisualizer, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
