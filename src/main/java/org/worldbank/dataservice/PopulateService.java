package org.worldbank.dataservice;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import org.worldbank.connector.Connector;
import org.worldbank.constants.DBInput;
import org.worldbank.constants.SQLConstants;
import org.worldbank.parse.CSVParser;

public class PopulateService
{

	public PopulateService()
	{
	}
	
	public void populateFromCSV(InputStream csvFile,String delimiter,String[] categories) throws ClassNotFoundException, SQLException
	{
		CSVParser parser = new CSVParser(csvFile,delimiter,categories);
		List<DBInput> inputs = parser.parseIntoDatabase();
		//username, String password, String host, String port
		Connector conn = new Connector(SQLConstants.getRoot(),SQLConstants.getPassword(),SQLConstants.getHost(),SQLConstants.getPort());
		conn.connect();
		
		for(DBInput input: inputs)
		{
			List<String> cats = input.getCategory();
			List<String> values = input.getValue();
			int i=0;
			for(String cat: cats)
			{
				conn.execute("call sp_insert("+cat+" "+values.get(i));
				i++;
			}
		}
	}
	

}
