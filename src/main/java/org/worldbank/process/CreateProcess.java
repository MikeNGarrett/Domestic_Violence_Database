package org.worldbank.process;

import java.util.UUID;

import org.worldbank.constants.DVDConstants;
import org.worldbank.users.User;

import edu.american.student.exception.RepositoryException;
import edu.american.student.foreman.AccumuloForeman;

public class CreateProcess
{

	public void createUser(User grantingUser, User toCreate) throws RepositoryException
	{
		AccumuloForeman aForeman = new AccumuloForeman();
		aForeman.connect();

		if (grantingUser.hasAuthority(toCreate))
		{
			String uuid = UUID.randomUUID().toString();
			aForeman.add(DVDConstants.TABLE.USERS.toString(), uuid, "NAME", toCreate.getName(), "");
			aForeman.add(DVDConstants.TABLE.USERS.toString(), uuid, "PASSWORD", toCreate.getPassword(), "");
			aForeman.add(DVDConstants.TABLE.USERS.toString(), uuid, "TYPE", toCreate.getType().toString(), "");
		}
	}
}
