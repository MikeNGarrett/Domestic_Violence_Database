package org.worldbank.dataservice;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.worldbank.connector.Connector;
import org.worldbank.constants.SQLConstants;
import org.worldbank.users.UserType;

public class DBOps extends CRUDOps
{
	private UserType type;
	private Connector conn;
	private static Logger log = LoggerFactory.getLogger(DBOps.class);

	public DBOps(UserType type)
	{
		this.type = type;
		conn = new Connector(SQLConstants.getRoot(), SQLConstants.getPassword(), SQLConstants.getHost(), SQLConstants.getPort());
	}

	@Override
	public boolean create(String sql) throws ClassNotFoundException, SQLException
	{
		switch (type)
		{
			case PROGENITOR:
				conn.connect();
				return conn.execute(sql);
			case DEVELOPER:
				conn.connect();
				return conn.execute(sql);
			case NATIONAL_NETWORK:
				// TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case REGIONAL_NETWORK:
				// TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case PROVIDER:
				// TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			default:
				log.warn("CREATE request ignored. You do not have auths");
		}
		return false;
	}

	@Override
	public ResultSet read(String query) throws ClassNotFoundException, SQLException
	{
		conn.connect();
		return conn.executeQuery(query);
	}

	@Override
	public int update(String updateSQL) throws ClassNotFoundException, SQLException
	{
		switch(type)
		{
			case PROGENITOR:
				conn.connect();
				return conn.executeUpdate(updateSQL);
			case DEVELOPER:
				conn.connect();
				return conn.executeUpdate(updateSQL);
			case NATIONAL_NETWORK:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case REGIONAL_NETWORK:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case PROVIDER:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			default:
				log.warn("CREATE request ignored. You do not have auths");
		}
		return -1;
	}

	@Override
	public boolean delete(String deleteSQL) throws ClassNotFoundException, SQLException
	{
		switch(type)
		{
			case PROGENITOR:
				conn.connect();
				return conn.execute(deleteSQL);
			case DEVELOPER:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case NATIONAL_NETWORK:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case REGIONAL_NETWORK:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			case PROVIDER:
				//TODO FIXME
				log.warn("Unimplemented: FIXME");
				break;
			default:
				log.warn("CREATE request ignored. You do not have auths");
		}
		return false;
	}

}
