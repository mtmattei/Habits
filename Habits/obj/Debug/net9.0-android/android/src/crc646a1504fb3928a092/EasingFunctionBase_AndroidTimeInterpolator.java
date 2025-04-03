package crc646a1504fb3928a092;


public class EasingFunctionBase_AndroidTimeInterpolator
	extends android.view.animation.BaseInterpolator
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_getInterpolation:(F)F:GetGetInterpolation_FHandler\n" +
			"";
		mono.android.Runtime.register ("Microsoft.UI.Xaml.Media.Animation.EasingFunctionBase+AndroidTimeInterpolator, Uno.UI", EasingFunctionBase_AndroidTimeInterpolator.class, __md_methods);
	}

	public EasingFunctionBase_AndroidTimeInterpolator ()
	{
		super ();
		if (getClass () == EasingFunctionBase_AndroidTimeInterpolator.class) {
			mono.android.TypeManager.Activate ("Microsoft.UI.Xaml.Media.Animation.EasingFunctionBase+AndroidTimeInterpolator, Uno.UI", "", this, new java.lang.Object[] {  });
		}
	}

	public float getInterpolation (float p0)
	{
		return n_getInterpolation (p0);
	}

	private native float n_getInterpolation (float p0);

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
