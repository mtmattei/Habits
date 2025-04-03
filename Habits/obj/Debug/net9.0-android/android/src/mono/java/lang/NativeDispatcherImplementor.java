package mono.java.lang;


public class NativeDispatcherImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		java.lang.Runnable
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_run:()V:GetRunHandler:Java.Lang.IRunnableInvoker, Mono.Android, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.Dispatching.NativeDispatcher+NativeDispatcherImplementor, Uno.UI.Dispatching", NativeDispatcherImplementor.class, __md_methods);
	}

	public NativeDispatcherImplementor ()
	{
		super ();
		if (getClass () == NativeDispatcherImplementor.class) {
			mono.android.TypeManager.Activate ("Uno.UI.Dispatching.NativeDispatcher+NativeDispatcherImplementor, Uno.UI.Dispatching", "", this, new java.lang.Object[] {  });
		}
	}

	public void run ()
	{
		n_run ();
	}

	private native void n_run ();

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
