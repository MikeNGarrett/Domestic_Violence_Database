package org.worldbank.constants;

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
