package com.web.jobs;

import java.util.Date;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.web.utils.DateUtil;

public class MyQuartzJobBean2 extends QuartzJobBean {

	@Override
	protected void executeInternal(JobExecutionContext context)
			throws JobExecutionException {
		System.out.println("定时任务：QuartzJobBean类继承，时间："
				+ DateUtil.getDateStrByPattern(new Date(),
						"yyyy-MM-dd HH:mm:ss"));
	}

}
