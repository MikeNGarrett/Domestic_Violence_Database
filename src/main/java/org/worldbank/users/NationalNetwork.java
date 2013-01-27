package org.worldbank.users;

public class NationalNetwork extends User
{
	public NationalNetwork()
	{
		this.extreme = true;
	}

	@Override
	public UserType getAuthorityLevel() {
		return UserType.NATIONAL_NETWORK;
	}
}
