package crc64f992831d5fe2b256;


public class AppBarButtonWrapper
	extends crc6499cc3f8d6dc23bc6.Border
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onMeasure:(II)V:GetOnMeasure_IIHandler\n" +
			"";
		mono.android.Runtime.register ("Uno.Toolkit.UI.AppBarButtonWrapper, Uno.Toolkit.WinUI", AppBarButtonWrapper.class, __md_methods);
	}

	public AppBarButtonWrapper (android.content.Context p0)
	{
		super (p0);
		if (getClass () == AppBarButtonWrapper.class) {
			mono.android.TypeManager.Activate ("Uno.Toolkit.UI.AppBarButtonWrapper, Uno.Toolkit.WinUI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public void onMeasure (int p0, int p1)
	{
		n_onMeasure (p0, p1);
	}

	private native void n_onMeasure (int p0, int p1);

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
