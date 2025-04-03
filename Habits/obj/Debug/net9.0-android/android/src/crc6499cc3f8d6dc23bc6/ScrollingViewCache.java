package crc6499cc3f8d6dc23bc6;


public class ScrollingViewCache
	extends androidx.recyclerview.widget.RecyclerView.ViewCacheExtension
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getViewForPositionAndType:(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)Landroid/view/View;:GetGetViewForPositionAndType_Landroidx_recyclerview_widget_RecyclerView_Recycler_IIHandler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.ScrollingViewCache, Uno.UI", ScrollingViewCache.class, __md_methods);
	}

	public ScrollingViewCache ()
	{
		super ();
		if (getClass () == ScrollingViewCache.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.ScrollingViewCache, Uno.UI", "", this, new java.lang.Object[] {  });
		}
	}

	public ScrollingViewCache (crc6499cc3f8d6dc23bc6.NativeListViewBase p0)
	{
		super ();
		if (getClass () == ScrollingViewCache.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.ScrollingViewCache, Uno.UI", "Microsoft.UI.Xaml.Controls.NativeListViewBase, Uno.UI", this, new java.lang.Object[] { p0 });
		}
	}

	public android.view.View getViewForPositionAndType (androidx.recyclerview.widget.RecyclerView.Recycler p0, int p1, int p2)
	{
		return n_getViewForPositionAndType (p0, p1, p2);
	}

	private native android.view.View n_getViewForPositionAndType (androidx.recyclerview.widget.RecyclerView.Recycler p0, int p1, int p2);

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
