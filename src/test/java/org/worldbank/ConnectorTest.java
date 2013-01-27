package org.worldbank;

import org.junit.Test;
import org.slf4j.LoggerFactory;
import org.worldbank.connector.Connector;

public class ConnectorTest {

	@Test
	public void test() throws Exception
	{
		LoggerFactory.getLogger(this.getClass()).info("Hello WOrld");
		Connector connector = new Connector("root","cia008","localhost","3306");
		connector.connect();
	}
}
