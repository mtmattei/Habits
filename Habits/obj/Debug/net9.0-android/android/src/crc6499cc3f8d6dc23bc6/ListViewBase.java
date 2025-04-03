package crc6499cc3f8d6dc23bc6;


public class ListViewBase
	extends crc641cde71c42eef4307.Selector
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.ListViewBase, Uno.UI", ListViewBase.class, __md_methods);
	}

	public ListViewBase (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ListViewBase.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.ListViewBase, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public boolean dispatchTouchEvent (android.view.MotionEvent p0)
	{
		return n_dispatchTouchEvent (p0);
	}

	private native boolean n_dispatchTouchEvent (android.view.MotionEvent p0);

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
