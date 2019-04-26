package jspbook.ch14;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.slf4j.*;

@WebListener
public class LogContextListener implements ServletContextListener {
	// 로그 처리를 위한 로거 객체 
	Logger log;
	
	// 리스너 종료시 로그 메시지 출력
	public void contextDestroyed(ServletContextEvent arg0) {
		log.info("LogContextListener stop");
	}

	// 리스너 초기화시 로그 메시지 출력
	public void contextInitialized(ServletContextEvent arg0) {
		log = LoggerFactory.getLogger(this.getClass());
		log.info("LogContextListener start");
	}
}