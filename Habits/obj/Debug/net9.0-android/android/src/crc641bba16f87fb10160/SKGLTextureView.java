package crc641bba16f87fb10160;


public class SKGLTextureView
	extends crc641bba16f87fb10160.GLTextureView
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("SkiaSharp.Views.Windows.SKGLTextureView, SkiaSharp.Views.Windows", SKGLTextureView.class, __md_methods);
	}

	public SKGLTextureView (android.content.Context p0, android.util.AttributeSet p1, int p2, int p3)
	{
		super (p0, p1, p2, p3);
		if (getClass () == SKGLTextureView.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKGLTextureView, SkiaSharp.Views.Windows", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2, p3 });
		}
	}

	public SKGLTextureView (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == SKGLTextureView.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKGLTextureView, SkiaSharp.Views.Windows", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}

	public SKGLTextureView (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == SKGLTextureView.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKGLTextureView, SkiaSharp.Views.Windows", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}

	public SKGLTextureView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == SKGLTextureView.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKGLTextureView, SkiaSharp.Views.Windows", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
