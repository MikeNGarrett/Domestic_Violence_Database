package org.worldbank.users;

public class Developer extends User 
{

	public Developer(String userName, String password)
	{
		super(userName, password, UserType.DEVELOPER);
	}

}
