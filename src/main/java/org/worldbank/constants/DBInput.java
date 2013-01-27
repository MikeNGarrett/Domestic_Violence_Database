package org.worldbank.constants;

import java.util.ArrayList;
import java.util.List;

public class DBInput
{
	private List<String> category = new ArrayList<String>();
	private List<String> value = new ArrayList<String>();
	
	public DBInput()
	{
	}
	
	public void addValue(String category,String value)
	{
		this.category.add(category);
		this.value.add(value);
	}
	public List<String> getCategory()
	{
		return this.category;
	}
	
	public List<String> getValue()
	{
		return this.value;
	}
}
