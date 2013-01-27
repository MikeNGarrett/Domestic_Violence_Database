package org.worldbank.users;


public enum UserType
{
	VIEWER, PROVIDER, REGIONAL_NETWORK, NATIONAL_NETWORK, DEVELOPER, PROGENITOR;

	public static UserType getType(String type)
	{
		UserType[] list = UserType.values();
		for(UserType indexed: list)
		{
			if(indexed.toString().equals(type))
			{
				return indexed;
			}
		}
		return null;
	}

}
