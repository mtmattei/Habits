package crc6499cc3f8d6dc23bc6;


public class NativeWebView
	extends android.webkit.WebView
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.NativeWebView, Uno.UI", NativeWebView.class, __md_methods);
	}

	public NativeWebView (android.content.Context p0, android.util.AttributeSet p1, int p2, boolean p3)
	{
		super (p0, p1, p2, p3);
		if (getClass () == NativeWebView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeWebView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib:System.Boolean, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2, p3 });
		}
	}

	public NativeWebView (android.content.Context p0, android.util.AttributeSet p1, int p2, int p3)
	{
		super (p0, p1, p2, p3);
		if (getClass () == NativeWebView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeWebView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2, p3 });
		}
	}

	public NativeWebView (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == NativeWebView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeWebView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}

	public NativeWebView (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == NativeWebView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeWebView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}

	public NativeWebView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == NativeWebView.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeWebView, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
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
