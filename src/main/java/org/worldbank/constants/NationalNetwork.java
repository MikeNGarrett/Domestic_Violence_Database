package org.worldbank.constants;

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
