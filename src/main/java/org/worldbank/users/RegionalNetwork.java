package org.worldbank.users;

public class RegionalNetwork extends User
{
	public RegionalNetwork()
	{
		this.moderate = true;
	}

	@Override
	public UserType getAuthorityLevel() {
		return UserType.REGIONAL_NETWORK;
	}
}
