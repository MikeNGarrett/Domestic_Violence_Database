package org.worldbank.parse;

import static org.junit.Assert.*;

import java.io.InputStream;
import java.util.List;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class SQLDumpParserTest
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
	public void test()
	{
		InputStream is = this.getClass().getClassLoader().getResourceAsStream("dump.sql");
		SQLDumpParser parser = new SQLDumpParser(is);
		List<String> sqlStatements  = parser.getSQLStatements();
		assertEquals("","DROP TABLE IF EXISTS `org_servicecost`;",sqlStatements.get(0));
	}

}
