package crc641bba16f87fb10160;


public class SKSwapChainPanel
	extends crc64a352b6f848b4d68e.FrameworkElement
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("SkiaSharp.Views.Windows.SKSwapChainPanel, SkiaSharp.Views.Windows", SKSwapChainPanel.class, __md_methods);
	}

	public SKSwapChainPanel (android.content.Context p0)
	{
		super (p0);
		if (getClass () == SKSwapChainPanel.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKSwapChainPanel, SkiaSharp.Views.Windows", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
