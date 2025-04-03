package crc64a352b6f848b4d68e;


public class FrameworkElement
	extends crc64a352b6f848b4d68e.UIElement
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onNativeLoaded:()V:GetOnNativeLoadedHandler\n" +
			"n_onNativeUnloaded:()V:GetOnNativeUnloadedHandler\n" +
			"n_onRemovedFromParent:()V:GetOnRemovedFromParentHandler\n" +
			"n_onMeasure:(II)V:GetOnMeasure_IIHandler\n" +
			"n_onLayoutCore:(ZIIIIZ)V:GetOnLayoutCore_ZIIIIZHandler\n" +
			"n_nativeRequestLayout:()Z:GetNativeRequestLayoutHandler\n" +
			"n_onInitializeAccessibilityNodeInfo:(Landroid/view/accessibility/AccessibilityNodeInfo;)V:GetOnInitializeAccessibilityNodeInfo_Landroid_view_accessibility_AccessibilityNodeInfo_Handler\n" +
			"n_sendAccessibilityEvent:(I)V:GetSendAccessibilityEvent_IHandler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.FrameworkElement, Uno.UI", FrameworkElement.class, __md_methods);
	}

	public FrameworkElement (android.content.Context p0)
	{
		super (p0);
		if (getClass () == FrameworkElement.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.FrameworkElement, Uno.UI", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

	public void onNativeLoaded ()
	{
		n_onNativeLoaded ();
	}

	private native void n_onNativeLoaded ();

	public void onNativeUnloaded ()
	{
		n_onNativeUnloaded ();
	}

	private native void n_onNativeUnloaded ();

	public void onRemovedFromParent ()
	{
		n_onRemovedFromParent ();
	}

	private native void n_onRemovedFromParent ();

	public void onMeasure (int p0, int p1)
	{
		n_onMeasure (p0, p1);
	}

	private native void n_onMeasure (int p0, int p1);

	public void onLayoutCore (boolean p0, int p1, int p2, int p3, int p4, boolean p5)
	{
		n_onLayoutCore (p0, p1, p2, p3, p4, p5);
	}

	private native void n_onLayoutCore (boolean p0, int p1, int p2, int p3, int p4, boolean p5);

	public boolean nativeRequestLayout ()
	{
		return n_nativeRequestLayout ();
	}

	private native boolean n_nativeRequestLayout ();

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
