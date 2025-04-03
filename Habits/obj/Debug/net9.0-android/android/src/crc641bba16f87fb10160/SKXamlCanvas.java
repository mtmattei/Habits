package crc641bba16f87fb10160;


public class SKXamlCanvas
	extends crc6499cc3f8d6dc23bc6.Canvas
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onDraw:(Landroid/graphics/Canvas;)V:GetOnDraw_Landroid_graphics_Canvas_Handler\n" +
			"";
		mono.android.Runtime.register ("SkiaSharp.Views.Windows.SKXamlCanvas, SkiaSharp.Views.Windows", SKXamlCanvas.class, __md_methods);
	}

	public SKXamlCanvas (android.content.Context p0)
	{
		super (p0);
		if (getClass () == SKXamlCanvas.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKXamlCanvas, SkiaSharp.Views.Windows", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public void onDraw (android.graphics.Canvas p0)
	{
		n_onDraw (p0);
	}

	private native void n_onDraw (android.graphics.Canvas p0);

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
