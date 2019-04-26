package jspbook.ch14;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.slf4j.*;

//ch14 폴더 요청에 대해서만 필터 적용
@WebFilter("/ch14/*")
public class LogFilter implements Filter {
	// 로그 처리를 위한 로거 객체
	Logger log;
	
	// 필터 종료시 로그메시지
	public void destroy() {
		log.info("LogFilter stop");
	}

	// 필터 실행시 로그메시지
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		log.debug("LogFilter run"+arg0.getRemoteAddr());
		arg2.doFilter(arg0, arg1);
	}

	// 필터 초기화시 로그메시지
	public void init(FilterConfig arg0) throws ServletException {
		log = LoggerFactory.getLogger(this.getClass());
		log.info("LogFilter start");
	}
}