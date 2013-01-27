package org.worldbank.dataservice;

import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.worldbank.constants.DVDConstants;
import org.worldbank.constants.DVDConstants.TABLE;

import edu.american.student.exception.RepositoryException;
import edu.american.student.foreman.AccumuloForeman;
import edu.american.student.util.AccumuloAdministrator;

public class ProgenitorService
{

	private static Logger log = LoggerFactory.getLogger(ProgenitorService.class);
	
	public void buildDatabase() throws RepositoryException
	{
		AccumuloForeman aForeman = new AccumuloForeman();
		aForeman.connect();
		AccumuloAdministrator.setup();
		
		TABLE[] tables = DVDConstants.TABLE.values();
		for(TABLE table: tables)
		{
			log.info("Creating Table:"+table.toString());
			aForeman.makeTable(table.toString());
		}
		
		log.info("Establishing Progenitor");
		String uuid = UUID.randomUUID().toString();
		aForeman.add(DVDConstants.TABLE.USERS.toString(), uuid, "NAME", "progenitor", "");
		aForeman.add(DVDConstants.TABLE.USERS.toString(), uuid, "PASSWORD", "thereisnospoon", "");
		aForeman.add(DVDConstants.TABLE.USERS.toString(), uuid, "TYPE", "PROGENITOR", "");
		
	}

}
