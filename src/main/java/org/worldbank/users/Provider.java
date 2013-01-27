package org.worldbank.users;

public class Provider extends User
{
	public Provider()
	{
		this.basic = true;
	}

	@Override
	public UserType getAuthorityLevel() {
		return UserType.PROVIDER;
	}
}
