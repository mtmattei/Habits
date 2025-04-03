package crc643cb597f22379df1b;


public class Gamepad_InputDeviceListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.hardware.input.InputManager.InputDeviceListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onInputDeviceAdded:(I)V:GetOnInputDeviceAdded_IHandler:Android.Hardware.Input.InputManager/IInputDeviceListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"n_onInputDeviceChanged:(I)V:GetOnInputDeviceChanged_IHandler:Android.Hardware.Input.InputManager/IInputDeviceListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"n_onInputDeviceRemoved:(I)V:GetOnInputDeviceRemoved_IHandler:Android.Hardware.Input.InputManager/IInputDeviceListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Windows.Gaming.Input.Gamepad+InputDeviceListener, Uno", Gamepad_InputDeviceListener.class, __md_methods);
	}

	public Gamepad_InputDeviceListener ()
	{
		super ();
		if (getClass () == Gamepad_InputDeviceListener.class) {
			mono.android.TypeManager.Activate ("Windows.Gaming.Input.Gamepad+InputDeviceListener, Uno", "", this, new java.lang.Object[] {  });
		}
	}

	public void onInputDeviceAdded (int p0)
	{
		n_onInputDeviceAdded (p0);
	}

	private native void n_onInputDeviceAdded (int p0);

	public void onInputDeviceChanged (int p0)
	{
		n_onInputDeviceChanged (p0);
	}

	private native void n_onInputDeviceChanged (int p0);

	public void onInputDeviceRemoved (int p0)
	{
		n_onInputDeviceRemoved (p0);
	}

	private native void n_onInputDeviceRemoved (int p0);

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
