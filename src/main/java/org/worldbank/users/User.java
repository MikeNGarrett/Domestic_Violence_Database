package org.worldbank.users;

public abstract class User 
{
	boolean none;			// no access, can view
	boolean basic;			// access to one specific entry
	boolean moderate;		// access to any entry in their region
	boolean extreme;		// access to any entry in their country
	boolean codemonkey;		// no access to data, access to database infrastructure
	boolean harbinger;		// complete access to all data and infrastructure
	
	public abstract UserType getAuthorityLevel();
//	public static String AuthorityLevel(String user)
//	{
//		if (basic == true)
//		{
//			return "Provider";
//		}
//		if (moderate == true)
//		{
//			return "RegionalNetwork";
//		}
//		if (extreme == true)
//		{
//			return "NationalNetwork";
//		}
//		if (codemonkey == true)
//		{
//			return "Developer";
//		}
//		if (harbinger == true)
//		{
//			return "Progenitor";
//		}
//		else
//		{
//			return "Viewer";
//		}
//	}
	
	public boolean getView()
	{
		return basic;
	}
}
