package crc641bba16f87fb10160;


public class SKGLTextureView_InternalRenderer
	extends crc641bba16f87fb10160.SKGLTextureViewRenderer
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("SkiaSharp.Views.Windows.SKGLTextureView+InternalRenderer, SkiaSharp.Views.Windows", SKGLTextureView_InternalRenderer.class, __md_methods);
	}

	public SKGLTextureView_InternalRenderer ()
	{
		super ();
		if (getClass () == SKGLTextureView_InternalRenderer.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKGLTextureView+InternalRenderer, SkiaSharp.Views.Windows", "", this, new java.lang.Object[] {  });
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
