package org.worldbank;

import org.junit.Test;
import org.worldbank.connector.Connector;

public class ConnectorTest {

	@Test
	public void test() throws Exception
	{
		Connector connector = new Connector();
		connector.connectToAndQueryDatabase("root", "Cyclone5");
		
	}
}
