package crc642579205336516b81;


public class ListView
	extends android.widget.ListView
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onMeasure:(II)V:GetOnMeasure_IIHandler\n" +
			"n_removeDetachedView:(Landroid/view/View;Z)V:GetRemoveDetachedView_Landroid_view_View_ZHandler\n" +
			"n_dispatchTouchEvent:(Landroid/view/MotionEvent;)Z:GetDispatchTouchEvent_Landroid_view_MotionEvent_Handler\n" +
			"n_onLayout:(ZIIII)V:GetOnLayout_ZIIIIHandler\n" +
			"n_onInitializeAccessibilityNodeInfo:(Landroid/view/accessibility/AccessibilityNodeInfo;)V:GetOnInitializeAccessibilityNodeInfo_Landroid_view_accessibility_AccessibilityNodeInfo_Handler\n" +
			"n_sendAccessibilityEvent:(I)V:GetSendAccessibilityEvent_IHandler\n" +
			"n_toString:()Ljava/lang/String;:GetToStringHandler\n" +
			"n_hashCode:()I:GetGetHashCodeHandler\n" +
			"n_onAttachedToWindow:()V:GetOnAttachedToWindowHandler\n" +
			"n_onDetachedFromWindow:()V:GetOnDetachedFromWindowHandler\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.Controls.Legacy.ListView, Uno.UI", ListView.class, __md_methods);
	}

	public ListView (android.content.Context p0, android.util.AttributeSet p1, int p2, int p3)
	{
		super (p0, p1, p2, p3);
		if (getClass () == ListView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Controls.Legacy.ListView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2, p3 });
		}
	}

	public ListView (android.content.Context p0, android.util.AttributeSet p1, int p2)
	{
		super (p0, p1, p2);
		if (getClass () == ListView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Controls.Legacy.ListView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android:System.Int32, System.Private.CoreLib", this, new java.lang.Object[] { p0, p1, p2 });
		}
	}

	public ListView (android.content.Context p0, android.util.AttributeSet p1)
	{
		super (p0, p1);
		if (getClass () == ListView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Controls.Legacy.ListView, Uno.UI", "Android.Content.Context, Mono.Android:Android.Util.IAttributeSet, Mono.Android", this, new java.lang.Object[] { p0, p1 });
		}
	}

	public ListView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == ListView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Controls.Legacy.ListView, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public void onMeasure (int p0, int p1)
	{
		n_onMeasure (p0, p1);
	}

	private native void n_onMeasure (int p0, int p1);

	public void removeDetachedView (android.view.View p0, boolean p1)
	{
		n_removeDetachedView (p0, p1);
	}

	private native void n_removeDetachedView (android.view.View p0, boolean p1);

	public boolean dispatchTouchEvent (android.view.MotionEvent p0)
	{
		return n_dispatchTouchEvent (p0);
	}

	private native boolean n_dispatchTouchEvent (android.view.MotionEvent p0);

	public void onLayout (boolean p0, int p1, int p2, int p3, int p4)
	{
		n_onLayout (p0, p1, p2, p3, p4);
	}

	private native void n_onLayout (boolean p0, int p1, int p2, int p3, int p4);

	public void onInitializeAccessibilityNodeInfo (android.view.accessibility.AccessibilityNodeInfo p0)
	{
		n_onInitializeAccessibilityNodeInfo (p0);
	}

	private native void n_onInitializeAccessibilityNodeInfo (android.view.accessibility.AccessibilityNodeInfo p0);

	public void sendAccessibilityEvent (int p0)
	{
		n_sendAccessibilityEvent (p0);
	}

	private native void n_sendAccessibilityEvent (int p0);

	public java.lang.String toString ()
	{
		return n_toString ();
	}

	private native java.lang.String n_toString ();

	public int hashCode ()
	{
		return n_hashCode ();
	}

	private native int n_hashCode ();

	public void onAttachedToWindow ()
	{
		n_onAttachedToWindow ();
	}

	private native void n_onAttachedToWindow ();

	public void onDetachedFromWindow ()
	{
		n_onDetachedFromWindow ();
	}

	private native void n_onDetachedFromWindow ();

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
