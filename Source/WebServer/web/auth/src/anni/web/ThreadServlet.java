
package anni.web;

import anni.dao.ThreadDao;
import anni.domain.Thread;
import anni.domain.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ThreadServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ThreadDao threadDao = new ThreadDao();

    /**
     * 处理get请求.
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        this.process(request, response);
    }

    /**
     * 处理post请求
     */
    public void doPost(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException {

        this.process(request, response);
    }

    /**
     * 处理请求.
     */
    public void process(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException {

        String method = request.getParameter("method");
        if (method == null) {
            method = "list";
        }

        try {
            // 分发请求
            if ("post".equals(method)) {
                this.post(request, response);
            }
        } catch(Exception ex) {
            System.err.println(ex);
        }
    }

    /**
     * 发布新主题.
     */
    public void post(HttpServletRequest request,HttpServletResponse response) throws Exception {
        //String title = request.getParameter("title");
        //String content = request.getParameter("content");

        User user = (User) request.getSession().getAttribute("user");
        Thread thread = new Thread();
        thread.setUserName(user.getUserName());

        threadDao.save(thread);

        response.sendRedirect(request.getContextPath() + "/forum.do?method=list");
    }
}
