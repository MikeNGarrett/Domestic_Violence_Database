package org.worldbank.users;

public class Developer extends User 
{
	public Developer()
	{
		this.codemonkey = true;
	}

	@Override
	public UserType getAuthorityLevel() {
		return UserType.DEVELOPER;
	}
}
