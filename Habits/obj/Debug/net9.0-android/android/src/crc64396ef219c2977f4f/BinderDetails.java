package crc64396ef219c2977f4f;


public class BinderDetails
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_toString:()Ljava/lang/String;:GetToStringHandler\n" +
			"";
		mono.android.Runtime.register ("Uno.UI.DataBinding.BinderDetails, Uno.UI", BinderDetails.class, __md_methods);
	}

	public BinderDetails ()
	{
		super ();
		if (getClass () == BinderDetails.class) {
			mono.android.TypeManager.Activate ("Uno.UI.DataBinding.BinderDetails, Uno.UI", "", this, new java.lang.Object[] {  });
		}
	}

	public java.lang.String toString ()
	{
		return n_toString ();
	}

	private native java.lang.String n_toString ();

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
