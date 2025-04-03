package crc641bba16f87fb10160;


public abstract class SKGLTextureViewRenderer
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("SkiaSharp.Views.Windows.SKGLTextureViewRenderer, SkiaSharp.Views.Windows", SKGLTextureViewRenderer.class, __md_methods);
	}

	public SKGLTextureViewRenderer ()
	{
		super ();
		if (getClass () == SKGLTextureViewRenderer.class) {
			mono.android.TypeManager.Activate ("SkiaSharp.Views.Windows.SKGLTextureViewRenderer, SkiaSharp.Views.Windows", "", this, new java.lang.Object[] {  });
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
