package org.worldbank.parse;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.worldbank.constants.DBInput;

public class CSVParser
{
	private InputStream csvFile;
	private String delimiter;
	private String[] categories;
	public CSVParser(InputStream csvFile,String delimiter,String[] categories)
	{
		this.csvFile = csvFile;
		this.delimiter = delimiter;
		this.categories = categories;
	}
	
	public List<DBInput> parseIntoDatabase()
	{
		List<DBInput> toReturn = new ArrayList<DBInput>();
		Scanner in = new Scanner(csvFile);
		in.useDelimiter("\n");
		while(in.hasNext())
		{
			String next = in.next();
			String[] values = next.split(delimiter);
			int index = 0;
			DBInput input = new DBInput();
			for(String category:categories)
			{
				input.addValue(category,values[index]);
				System.out.println(category+": "+values[index]);
				index++;
			}
			System.out.println();
			toReturn.add(input);
		}
		return toReturn;
	}
	

}
