package org.worldbank.users;

public class Viewer extends User
{

	public Viewer(String userName, String password)
	{
		super(userName, password, UserType.VIEWER);
	}

}
