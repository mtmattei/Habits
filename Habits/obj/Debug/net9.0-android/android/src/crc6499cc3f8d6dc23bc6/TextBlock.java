package crc6499cc3f8d6dc23bc6;


public class TextBlock
	extends crc64a352b6f848b4d68e.FrameworkElement
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getText:()Ljava/lang/String;:GetGetTextHandler\n" +
			"n_nativeHitCheck:()Z:GetNativeHitCheckHandler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.TextBlock, Uno.UI", TextBlock.class, __md_methods);
	}

	public TextBlock (android.content.Context p0)
	{
		super (p0);
		if (getClass () == TextBlock.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.TextBlock, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public java.lang.String getText ()
	{
		return n_getText ();
	}

	private native java.lang.String n_getText ();

	public boolean nativeHitCheck ()
	{
		return n_nativeHitCheck ();
	}

	private native boolean n_nativeHitCheck ();

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
