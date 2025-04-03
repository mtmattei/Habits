package crc64a603748c3ab1f871;


public class NativeDispatcher_FrameCallbackImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		android.view.Choreographer.FrameCallback
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_doFrame:(J)V:GetDoFrame_JHandler:Android.Views.Choreographer/IFrameCallbackInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.Dispatching.NativeDispatcher+FrameCallbackImplementor, Uno.UI.Dispatching", NativeDispatcher_FrameCallbackImplementor.class, __md_methods);
	}

	public NativeDispatcher_FrameCallbackImplementor ()
	{
		super ();
		if (getClass () == NativeDispatcher_FrameCallbackImplementor.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Dispatching.NativeDispatcher+FrameCallbackImplementor, Uno.UI.Dispatching", "", this, new java.lang.Object[] {  });
		}
	}

	public void doFrame (long p0)
	{
		n_doFrame (p0);
	}

	private native void n_doFrame (long p0);

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
