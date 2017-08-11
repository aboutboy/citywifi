
package anni.utils;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SecurityFilter implements Filter {

    public void init(FilterConfig config) throws ServletException {}

    public void destroy() {}

    public void doFilter(ServletRequest request,
            ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String url = req.getServletPath();
        String method = req.getParameter("method");

        if ("/admin.do".equals(url) ||
            ("/user.do".equals(url) && "user_info".equals(method)))
        {
            HttpSession session = req.getSession();
            if (session.getAttribute("user") == null) {
                res.sendRedirect(req.getContextPath() + "/securityFailure.jsp");
                return;
            }
        }
        chain.doFilter(request, response);
    }
}