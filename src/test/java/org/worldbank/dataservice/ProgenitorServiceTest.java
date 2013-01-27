package org.worldbank.dataservice;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.worldbank.constants.DVDConstants;
import org.worldbank.constants.DVDConstants.TABLE;

import edu.american.student.exception.RepositoryException;
import edu.american.student.foreman.AccumuloForeman;

public class ProgenitorServiceTest
{

	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
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
		ProgenitorService srv = new ProgenitorService();
		srv.buildDatabase();
		
		AccumuloForeman aForeman = new AccumuloForeman();
		aForeman.connect();
		
		TABLE[] tables = DVDConstants.TABLE.values();
		for(TABLE table: tables)
		{
			assertTrue(table.toString()+" was not found!",aForeman.tableExists(table.toString()));
		}
		
	}

}
