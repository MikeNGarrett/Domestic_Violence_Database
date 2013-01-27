package org.worldbank.dataservice;

import org.worldbank.users.User;
import org.worldbank.users.UserType;


public class ProgenitorService
{

	public void buildDatabase()
	{
		//TODO FIXME run py script
		
	}

	public CRUDOps userCRUD(CRUDType type,User user)
	{
		switch(type)
		{
			case CREATE:
				return new CreateOps(user.getAuthorityLevel());
			case READ:
				break;
			case UPDATE:
				break;
			case DELETE:
				break;
		}
		return null;
	}
}
