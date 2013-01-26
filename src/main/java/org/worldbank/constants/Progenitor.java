package org.worldbank.constants;

public class Progenitor extends User
{
	public Progenitor()
	{
		this.harbinger = true;
	}

	@Override
	public UserType getAuthorityLevel() {
		return UserType.PROGENITOR;
	}
}
