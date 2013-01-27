package org.worldbank.dataservice;

import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class CRUDOps
{

	public abstract boolean create(String sql) throws ClassNotFoundException, SQLException;
	public abstract ResultSet read(String query) throws ClassNotFoundException, SQLException;
	public abstract int update(String updateSQL) throws ClassNotFoundException, SQLException;
}
