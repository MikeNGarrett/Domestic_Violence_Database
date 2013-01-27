package org.worldbank.dataservice;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.worldbank.connector.Connector;
import org.worldbank.constants.SQLConstants;
import org.worldbank.users.UserType;

public class CreateOps extends CRUDOps
{
	private UserType type;
	private Connector conn;
	
	//String username, String password, String host, String port
	public CreateOps(UserType type)
	{
		this.type = type;
		conn = new Connector(SQLConstants.getRoot(),SQLConstants.getPassword(),SQLConstants.getHost(),SQLConstants.getPort());
	}
	
	@Override
	public boolean create(String sql) throws ClassNotFoundException, SQLException
	{
		switch(type)
		{
			case PROGENITOR:
				conn.connect();
				return conn.execute(sql);
			case DEVELOPER:
				break;
				
				
		}
	}
	
	@Override
	public ResultSet read(String query) throws ClassNotFoundException, SQLException
	{
		conn.connect();
		return conn.executeQuery(query);
	}
	
	public int update(String updateSQL) throws ClassNotFoundException, SQLException
	{
		conn.connect();
		return conn.executeUpdate(updateSQL);
	}

}
