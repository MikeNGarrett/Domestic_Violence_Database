package org.worldbank.dataservice;

import org.worldbank.users.UserType;

public class CreateOps extends CRUDOps
{
	private UserType type;
	
	public CreateOps(UserType type)
	{
		this.type = type;
	}
	
	public void create(String sql)
	{
		
	}

}
