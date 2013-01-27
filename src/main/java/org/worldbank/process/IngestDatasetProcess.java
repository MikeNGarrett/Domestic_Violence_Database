package org.worldbank.process;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import edu.american.student.conf.IngestConfiguration;
import edu.american.student.conf.ProcessConfiguration;
import edu.american.student.examples.level4.IngestProcessing.IngestMapper;
import edu.american.student.exception.ProcessException;
import edu.american.student.process.IngestProcess;
import edu.american.student.process.PrimeProcess;

public class IngestDatasetProcess implements PrimeProcess
{
	private List<File> directoryToProcess = new ArrayList<File>();

	public void initalize(ProcessConfiguration conf) throws ProcessException
	{
		directoryToProcess=conf.getIngestFilesToProcess();
	}

	public void start() throws ProcessException
	{
	//	for (File indexed : directoryToProcess)
		{
			// ingest only files that arent hidden or directories themselves
		//	if (!indexed.isHidden() && !indexed.isDirectory())
			{
				String fileToProcess = directoryToProcess.get(0).getAbsolutePath();
				// configure an Ingest Process
				IngestConfiguration conf = new IngestConfiguration();
				conf.addFileToProcess(fileToProcess);
				conf.setIngestMapper(IngestMapper.class);
				// Run an Ingest Process
				IngestProcess ip = new IngestProcess();
				ip.initalize(conf);
				ip.start();
			}
		}

	}

}
