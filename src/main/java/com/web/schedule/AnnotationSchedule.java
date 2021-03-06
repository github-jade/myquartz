package com.web.schedule;

import java.util.Date;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.web.utils.DateUtil;

/**
 * quartz作业调度注解实现
 * 
 * @author jiangyf
 */
@Component("myScheduler")
public class AnnotationSchedule {
	/*
	 * （1）实现类上要有组件的注解@Component；
	 * （2）定时器的任务方法不能有返回值；若有返回值，spring初始化时报错，需要设定一个proxytargetclass的某个值为true
	 */
	@Scheduled(cron = "0 0 0/2 * * ?")
	public void testAnnotation() {
		System.out.println("定时任务：@Scheduled注解实现，时间："
				+ DateUtil.getDateStrByPattern(new Date(),
						"yyyy-MM-dd HH:mm:ss"));
	}

}
