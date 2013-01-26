package org.worldbank.parse;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class SQLDumpParser
{
	private InputStream sqlFile;

	public SQLDumpParser(InputStream sqlFile)
	{
		this.sqlFile = sqlFile;
	}

	public List<String> getSQLStatements()
	{
		List<String> toReturn = new ArrayList<String>();
		Scanner in = new Scanner(sqlFile);
		in.useDelimiter("\n");
		boolean foundStatement = false;
		String statement = "";
		while (in.hasNext())
		{
			statement = in.next();
			while (!foundStatement)
			{
				if (statement.startsWith("-") || statement.startsWith("/"))
				{
					foundStatement = true;
					break;
				}
				else if (statement.endsWith(";"))
				{
					toReturn.add(statement);
					foundStatement = true;
				}
				statement += in.next();
			}
			foundStatement = false;

		}
		return toReturn;
	}

}
