package org.worldbank.process;

import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;

import org.apache.accumulo.core.client.mapreduce.AccumuloInputFormat;
import org.apache.accumulo.core.data.Key;
import org.apache.accumulo.core.data.Value;
import org.apache.accumulo.core.util.Pair;
import org.apache.hadoop.io.NullWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.lib.output.NullOutputFormat;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.worldbank.constants.DVDConstants;

import edu.american.student.conf.HadoopJobConfiguration;
import edu.american.student.conf.ProcessConfiguration;
import edu.american.student.exception.ProcessException;
import edu.american.student.exception.RepositoryException;
import edu.american.student.exception.StopMapperException;
import edu.american.student.foreman.AccumuloForeman;
import edu.american.student.foreman.HadoopForeman;
import edu.american.student.process.PrimeProcess;

public class OrganizeProcess implements PrimeProcess
{

	@Override
	public void initalize(ProcessConfiguration conf) throws ProcessException
	{

	}

	@Override
	public void start() throws ProcessException
	{
		HadoopJobConfiguration entryAddConf = new HadoopJobConfiguration();
		entryAddConf.setJobName(HadoopJobConfiguration.buildJobName(this.getClass()));
		entryAddConf.setMapperClass(OrganizeMapper.class);
		entryAddConf.overrideDefaultTable(DVDConstants.TABLE.INGEST.toString());
		Collection<Pair<Text, Text>> cfPairs = new ArrayList<Pair<Text, Text>>();
		cfPairs.add(new Pair<Text, Text>(new Text("LINE"), null));
		entryAddConf.setFetchColumns(cfPairs);
		entryAddConf.setInputFormatClass(AccumuloInputFormat.class);
		entryAddConf.setOutputFormatClass(NullOutputFormat.class);
		entryAddConf.setOutputKeyClass(NullWritable.class);
		entryAddConf.setOutputValueClass(NullWritable.class);

		HadoopForeman hForeman = new HadoopForeman();
		hForeman.runJob(entryAddConf);

	}

	public static class OrganizeMapper extends Mapper<Key, Value, NullWritable, NullWritable>
	{
		private static Logger log = LoggerFactory.getLogger(OrganizeMapper.class);

		@Override
		public void map(Key key, Value value, Context context)
		{
			String[] values = value.toString().split("~");
			String category = values[0];
			String org = values[1];
			String number = values[2];
			String site = values[3];
			String description = values[4];
			String uuid = UUID.randomUUID().toString();
			AccumuloForeman aForeman = new AccumuloForeman();
			try
			{
				aForeman.connect();
				aForeman.add(DVDConstants.TABLE.DATASPACE.toString(), uuid, "CATEGORY", category, "");
				aForeman.add(DVDConstants.TABLE.DATASPACE.toString(), uuid, "NAME", org, "");
				aForeman.add(DVDConstants.TABLE.DATASPACE.toString(), uuid, "PHONE", number, "");
				aForeman.add(DVDConstants.TABLE.DATASPACE.toString(), uuid, "SITE", site, "");
				aForeman.add(DVDConstants.TABLE.DATASPACE.toString(), uuid, "DESCRIPTION", "", description);
			}
			catch (RepositoryException e)
			{
				throw new StopMapperException("", e);
			}

		}
	}

}
