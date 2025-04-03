package crc6499cc3f8d6dc23bc6;


public class NativeFlipView
	extends crc6499cc3f8d6dc23bc6.NativePagedView
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.NativeFlipView, Uno.UI", NativeFlipView.class, __md_methods);
	}

	public NativeFlipView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == NativeFlipView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeFlipView, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public NativeFlipView (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == NativeFlipView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeFlipView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
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
