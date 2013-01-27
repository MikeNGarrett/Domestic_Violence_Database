package org.worldbank.users;

public class NationalNetwork extends User
{

	public NationalNetwork(String userName, String password)
	{
		super(userName, password, UserType.NATIONAL_NETWORK);
	}
}
