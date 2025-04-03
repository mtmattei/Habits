package crc64f2c90c8fb3e9a8cc;


public class RemoteControlStatusView
	extends crc645d8252535e7ff47e.Ellipse
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("Uno.UI.RemoteControl.RemoteControlStatusView, Uno.UI.RemoteControl", RemoteControlStatusView.class, __md_methods);
	}

	public RemoteControlStatusView (android.content.Context p0)
	{
		super (p0);
		if (getClass () == RemoteControlStatusView.class) {
			mono.android.TypeManager.Activate ("Uno.UI.RemoteControl.RemoteControlStatusView, Uno.UI.RemoteControl", "Android.Content.Context, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

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
