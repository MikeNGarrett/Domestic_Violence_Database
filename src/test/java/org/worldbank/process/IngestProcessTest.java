package org.worldbank.process;

import java.io.File;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.worldbank.dataservice.ProgenitorService;

import edu.american.student.conf.IngestConfiguration;


public class IngestProcessTest
{

	@BeforeClass
	public static void setUpBeforeClass() throws Exception
	{
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
	public void test() throws Exception
	{
		File toProcess = new File("src/main/resources/ingest/dataset_DCADV.csv");
		IngestConfiguration conf = new IngestConfiguration();
		conf.addFileToProcess(toProcess.getAbsolutePath());
		
		IngestDatasetProcess pro = new IngestDatasetProcess();
		pro.initalize(conf);
		pro.start();
		
	}

}
