package crc6499cc3f8d6dc23bc6;


public class ListViewBaseScrollContentPresenter
	extends crc6499cc3f8d6dc23bc6.ScrollContentPresenter
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_scrollTo:(II)V:GetScrollTo_IIHandler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.ListViewBaseScrollContentPresenter, Uno.UI", ListViewBaseScrollContentPresenter.class, __md_methods);
	}

	public ListViewBaseScrollContentPresenter (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ListViewBaseScrollContentPresenter.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.ListViewBaseScrollContentPresenter, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public void scrollTo (int p0, int p1)
	{
		n_scrollTo (p0, p1);
	}

	private native void n_scrollTo (int p0, int p1);

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
