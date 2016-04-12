package cn.evilcoder.fantasyblog4j.filter;

import cn.evilcoder.fantasyblog4j.commons.LoginSession;
import cn.evilcoder.fantasyblog4j.utils.TokenUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * User: Huangshanqi
 * Date: 2016/4/8
 * Time: 10:15
 */
public class LoginFilter implements Filter {

    private final Logger logger = LoggerFactory.getLogger(LoginFilter.class);

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest)request;
        HttpServletResponse httpResponse = (HttpServletResponse)response;
        if(httpRequest.getRequestURI().startsWith("/u/")){
           HttpSession  session = httpRequest.getSession();
            if(session.getAttribute(LoginSession.TOKEN_KEY)==null){
                httpResponse.sendRedirect("/login");
            }else{
                long uid = (long)session.getAttribute(LoginSession.UID_KEY);
                String username = session.getAttribute(LoginSession.USERNAME_KEY).toString();
                String token = session.getAttribute(LoginSession.TOKEN_KEY).toString();
                long expiredTime = (long)session.getAttribute(LoginSession.EXPIRED_TIME_KEY);
                long now = System.currentTimeMillis();
                if(now<=expiredTime && TokenUtils.validateToken(username,uid,token)){
                    filterChain.doFilter(request,response);
                }else{
                    logger.error("login time expired or token invalidate");
                    httpResponse.sendRedirect("/login");
                }
            }
        }else{
            filterChain.doFilter(request,response);
        }
    }

    @Override
    public void destroy() {

    }
}
