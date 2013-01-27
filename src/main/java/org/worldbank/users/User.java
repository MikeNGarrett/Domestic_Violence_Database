package org.worldbank.users;

public abstract class User
{

	// boolean harbinger; // complete access to all data and infrastructure
	private String password;
	private String userName;
	private UserType type;

	public User(String userName, String password, UserType type)
	{
		this.userName = userName;
		this.password = password;
		this.type = type;
	}

	public UserType getType()
	{
		return this.type;
	}

	public String getPassword()
	{
		return password;
	}

	public String getName()
	{
		return userName;
	}

	public boolean hasAuthority(User overUser)
	{
		UserType type = overUser.getType();
		switch (type)
		{
			case PROGENITOR:
				if (this.type == UserType.PROGENITOR)
				{
					return true;
				}
				return false;
			case DEVELOPER:
				if (this.type == UserType.PROGENITOR || this.type == UserType.DEVELOPER)
				{
					return true;
				}
				return false;
			case NATIONAL_NETWORK:
				if (this.type == UserType.PROGENITOR || this.type == UserType.DEVELOPER)
				{
					return true;
				}
				return false;
			case REGIONAL_NETWORK:
				if (this.type == UserType.PROGENITOR || this.type == UserType.DEVELOPER || this.type == UserType.NATIONAL_NETWORK)
				{
					return true;
				}
				return false;
			case PROVIDER:
				if (this.type == UserType.PROGENITOR || this.type == UserType.DEVELOPER || this.type == UserType.NATIONAL_NETWORK || this.type == UserType.REGIONAL_NETWORK)
				{
					return true;
				}
				return false;
		}
		return false;
	}

	public static User newInstanceOf(String userName, String password, UserType t)
	{
		switch (t)
		{
			case PROGENITOR:
				return new Progenitor(userName, password);
			case DEVELOPER:
				return new Developer(userName, password);
			case NATIONAL_NETWORK:
				return new NationalNetwork(userName, password);
			case REGIONAL_NETWORK:
				return new RegionalNetwork(userName, password);
			case PROVIDER:
				return new Provider(userName, password);
				
		}
		return new Viewer(userName, password);
	}
}
