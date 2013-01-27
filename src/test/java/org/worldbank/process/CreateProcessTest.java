package org.worldbank.process;

import static org.junit.Assert.*;

import java.util.Random;
import java.util.UUID;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.mortbay.log.Log;
import org.worldbank.dataservice.ProgenitorService;
import org.worldbank.users.User;
import org.worldbank.users.UserType;

import edu.american.student.exception.RepositoryException;
import edu.american.student.foreman.AccumuloForeman;
import edu.american.student.util.AccumuloAdministrator;

public class CreateProcessTest
{

	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
		AccumuloAdministrator.setup();
		ProgenitorService service = new ProgenitorService();
		service.buildDatabase();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception
	{
	}

	@Before
	public void setUp() throws Exception
	{
	}

	@After
	public void tearDown() throws Exception
	{
	}

	@Test
	public void test() throws RepositoryException
	{
		AccumuloForeman aForeman = new AccumuloForeman();
		aForeman.connect();
		User grantingUser = aForeman.getUser("progenitor","thereisnospoon");
		String userName = UUID.randomUUID().toString();
		Log.info("Creating user :"+userName);
		String password = UUID.randomUUID().toString();
		UserType randomType =UserType.values()[new Random().nextInt(UserType.values().length)];
		User toCreate = User.newInstanceOf(userName, password, randomType);
		
		CreateProcess process = new CreateProcess();
		process.createUser(grantingUser, toCreate);
		
		if(grantingUser.hasAuthority(toCreate))
		{
			assertTrue("Created user was not found.",aForeman.userExists(toCreate));
		}
		
	}
}
