package org.worldbank.users;

public class Viewer extends User
{
	public Viewer()
	{
		this.none = true;
	}

	@Override
	public UserType getAuthorityLevel() {
		return UserType.VIEWER;
	}
}
