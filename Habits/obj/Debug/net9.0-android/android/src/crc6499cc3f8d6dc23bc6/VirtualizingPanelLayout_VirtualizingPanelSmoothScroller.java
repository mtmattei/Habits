package crc6499cc3f8d6dc23bc6;


public class VirtualizingPanelLayout_VirtualizingPanelSmoothScroller
	extends androidx.recyclerview.widget.LinearSmoothScroller
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_computeScrollVectorForPosition:(I)Landroid/graphics/PointF;:GetComputeScrollVectorForPosition_IHandler\n" +
			"n_updateActionForInterimTarget:(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V:GetUpdateActionForInterimTarget_Landroidx_recyclerview_widget_RecyclerView_SmoothScroller_Action_Handler\n" +
			"n_calculateSpeedPerPixel:(Landroid/util/DisplayMetrics;)F:GetCalculateSpeedPerPixel_Landroid_util_DisplayMetrics_Handler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.VirtualizingPanelLayout+VirtualizingPanelSmoothScroller, Uno.UI", VirtualizingPanelLayout_VirtualizingPanelSmoothScroller.class, __md_methods);
	}

	public VirtualizingPanelLayout_VirtualizingPanelSmoothScroller (android.content.Context p0)
	{
		super (p0);
		if (getClass () == VirtualizingPanelLayout_VirtualizingPanelSmoothScroller.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.VirtualizingPanelLayout+VirtualizingPanelSmoothScroller, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public android.graphics.PointF computeScrollVectorForPosition (int p0)
	{
		return n_computeScrollVectorForPosition (p0);
	}

	private native android.graphics.PointF n_computeScrollVectorForPosition (int p0);

	public void updateActionForInterimTarget (androidx.recyclerview.widget.RecyclerView.SmoothScroller.Action p0)
	{
		n_updateActionForInterimTarget (p0);
	}

	private native void n_updateActionForInterimTarget (androidx.recyclerview.widget.RecyclerView.SmoothScroller.Action p0);

	public float calculateSpeedPerPixel (android.util.DisplayMetrics p0)
	{
		return n_calculateSpeedPerPixel (p0);
	}

	private native float n_calculateSpeedPerPixel (android.util.DisplayMetrics p0);

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
