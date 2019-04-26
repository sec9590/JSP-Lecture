package jspbook.ch14;

import org.slf4j.*;

public class LogTest {
	private static Logger LOG = LoggerFactory.getLogger(LogTest.class);
	
	public static void main(String[] args) {
		String msg = "Hello Log!!";
		LOG.info("test log");
		LOG.warn("test log : {}", msg);
		LOG.debug("debug level test");
		LOG.trace("trace level test");
	}

}
