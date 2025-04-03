package crc64bad6bab841c07a1a;


public class NativeWindowWrapper_ActivationPreDrawListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.view.ViewTreeObserver.OnPreDrawListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onPreDraw:()Z:GetOnPreDrawHandler:Android.Views.ViewTreeObserver/IOnPreDrawListenerInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.Xaml.Controls.NativeWindowWrapper+ActivationPreDrawListener, Uno.UI", NativeWindowWrapper_ActivationPreDrawListener.class, __md_methods);
	}

	public NativeWindowWrapper_ActivationPreDrawListener ()
	{
		super ();
		if (getClass () == NativeWindowWrapper_ActivationPreDrawListener.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Xaml.Controls.NativeWindowWrapper+ActivationPreDrawListener, Uno.UI", "", this, new java.lang.Object[] {  });
		}
	}

	public boolean onPreDraw ()
	{
		return n_onPreDraw ();
	}

	private native boolean n_onPreDraw ();

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
