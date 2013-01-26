package org.worldbank.parse;

import java.io.FileInputStream;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.worldbank.parse.CSVParser;

public class CSVParserTest
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
	public void test() throws Exception
	{
		String[] categories = new String[]{ "Category", "Organization", "Phone", "Website", "Services/Description" };
		CSVParser parser = new CSVParser(new FileInputStream("src/main/resources/dataset_DCADV.csv"), "~", categories);

	}

}
