package org.worldbank.connector;

import static org.junit.Assert.assertNotNull;

import java.sql.ResultSet;

import org.junit.BeforeClass;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.worldbank.constants.SQLConstants;

public class ConnectorTest
{
	
	@BeforeClass
	public static void beforeClass() throws Exception
	{

	}

	@Test
	public void test() throws Exception
	{
		Logger log = LoggerFactory.getLogger(this.getClass());
		Connector connector = new Connector("root", "cia008", "localhost", "3306");
		assertNotNull(connector);
		connector.connect();
		log.info("USE "+SQLConstants.getDatabaseName()+"; CREATE TABLE  IF NOT EXISTS example (id INT, data VARCHAR(100);");
		connector.execute("USE "+SQLConstants.getDatabaseName()+";  CREATE TABLE IF NOT EXISTS example(id INT,data VARCHAR(100));");
		ResultSet rs = connector.executeQuery("DESCRIBE example");
		while(rs.next())
		{
			System.out.println(rs.toString());
		}
	}
}
