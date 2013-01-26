package org.worldbank.parse;

import java.io.InputStream;
import java.util.Scanner;

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
	
	public void parseIntoDatabase()
	{
		Scanner in = new Scanner(csvFile);
		in.useDelimiter("\n");
		while(in.hasNext())
		{
			String next = in.next();
			String[] values = next.split(delimiter);
			int index = 0;
			for(String category:categories)
			{
				System.out.println(category+": "+values[index]);
				index++;
			}
			System.out.println();
		}
	}
	

}
