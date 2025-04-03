package crc6499cc3f8d6dc23bc6;


public class NativeTimePickerFlyout_OnSetTimeListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.app.TimePickerDialog.OnTimeSetListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onTimeSet:(Landroid/widget/TimePicker;II)V:GetOnTimeSet_Landroid_widget_TimePicker_IIHandler:Android.App.TimePickerDialog/IOnTimeSetListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Controls.NativeTimePickerFlyout+OnSetTimeListener, Uno.UI", NativeTimePickerFlyout_OnSetTimeListener.class, __md_methods);
	}

	public NativeTimePickerFlyout_OnSetTimeListener ()
	{
		super ();
		if (getClass () == NativeTimePickerFlyout_OnSetTimeListener.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Controls.NativeTimePickerFlyout+OnSetTimeListener, Uno.UI", "", this, new java.lang.Object[] {  });
		}
	}

	public void onTimeSet (android.widget.TimePicker p0, int p1, int p2)
	{
		n_onTimeSet (p0, p1, p2);
	}

	private native void n_onTimeSet (android.widget.TimePicker p0, int p1, int p2);

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
