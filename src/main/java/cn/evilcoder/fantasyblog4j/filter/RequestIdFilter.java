package cn.evilcoder.fantasyblog4j.filter;

import cn.evilcoder.fantasyblog4j.commons.Common;
import org.slf4j.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

/**
 * Created by huangshanqi on 2016/7/1.
 *
 * The filter for adding the requestId in http Header.
 */

public class RequestIdFilter implements Filter {

    private static final Logger logger = org.slf4j.LoggerFactory.getLogger(RequestIdFilter.class);

    // To save the time when the request begin.
    private ThreadLocal<Long> beginTime = new ThreadLocal<>();

    // To save requestId in threadLocal.
    private ThreadLocal<String> threadLocalRequestId = new ThreadLocal<>();

    private void preHandle(HttpServletRequest servletRequest, HttpServletResponse servletResponse) {
        // get or create request
        String requestId = servletRequest.getHeader(Common.REQUEST_ID);
        if (null == requestId) {
            requestId = servletResponse.getHeader(Common.REQUEST_ID);
            if (null != requestId) {
                logger.info("{} found in the HttpServletResponse [{}]", Common.REQUEST_ID, requestId);
            }
        }
        if (null == requestId) {
            requestId = UUID.randomUUID().toString();
            logger.info("{} not fount in the header, generate {}:{}", Common.REQUEST_ID, Common.REQUEST_ID, requestId);
        }
        // set requestId to local
        threadLocalRequestId.set(requestId);
        // set requestId to response header
        servletResponse.addHeader(Common.REQUEST_ID, requestId);

        // save request begin timestamp
        beginTime.set(System.currentTimeMillis());
        logger.info("[begin] {} {}", servletRequest.getMethod(), servletRequest.getRequestURI());
    }

    private void afterComplement(HttpServletRequest servletRequest , HttpServletResponse servletResponse) {
        // get requestId from threadLocal
        String localRequestId = threadLocalRequestId.get();
        // get requestId from response
        String responseRequestId = servletResponse.getHeader(Common.REQUEST_ID);

        if (!localRequestId.equals(responseRequestId)) {
            logger.error("response requestId changed. requestId={}, responseRequestId={}", localRequestId, responseRequestId);
        }

        // set the request to response header again
        servletResponse.setHeader(Common.REQUEST_ID, localRequestId);

        long timeUsed = System.currentTimeMillis() - beginTime.get();
        logger.info("[status:{},time:{}ms] {} {}",
                servletResponse.getStatus(), timeUsed, servletRequest.getMethod(), servletRequest.getRequestURI());

        servletResponse.addHeader(Common.REQUEST_MS, timeUsed + "ms");

        // remove local value
        beginTime.remove();
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        logger.info("============= doing RequestIdFilter==================");
        preHandle((HttpServletRequest)servletRequest, (HttpServletResponse)servletResponse);
        filterChain.doFilter(servletRequest, servletResponse);
        afterComplement((HttpServletRequest)servletRequest, (HttpServletResponse)servletResponse);
    }

    @Override
    public void destroy() {

    }
}
