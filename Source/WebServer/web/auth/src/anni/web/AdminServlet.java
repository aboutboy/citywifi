
package anni.web;

import anni.dao.UserDao;
import anni.domain.User;
import anni.dao.ThreadDao;
import anni.domain.Thread;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserDao userDao = new UserDao();
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

        try {
            // 分发请求
            if ("userlist".equals(method)) {
                this.userlist(request, response);
            } else if ("loglist".equals(method)) {
                this.loglist(request, response);
            } else if ("enable_user".equals(method)) {
                this.enable_user(request, response);
            } else if ("disable_user".equals(method)) {
                this.disable_user(request, response);
            } else if ("upgrade_user".equals(method)) {
                this.upgrade_user(request, response);
            } else if ("demotion_user".equals(method)) {
                this.demotion_user(request, response);
            } else if ("del_user".equals(method)) {
                this.del_user(request, response);
            } else {
                this.loginweb(request, response);
            }
        } catch(Exception ex) {
            System.err.println(ex);
        }
    }

    private void loginweb(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
    }

    private void userlist(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<User> userlist = userDao.getAll();
        request.setAttribute("userlist", userlist);
        request.getRequestDispatcher("/admin/security/userList.jsp").forward(request, response);
    }

    private void loglist(HttpServletRequest request, HttpServletResponse response) throws Exception {
        List<Thread> loglist = threadDao.getAll();
        request.setAttribute("loglist", loglist);
        request.getRequestDispatcher("/admin/security/logList.jsp").forward(request, response);
    }

    private void enable_user(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String sUserid = request.getParameter("userid");
        User doUser = userDao.get(sUserid);
        doUser.setState(0);
        userDao.update(doUser);
        response.sendRedirect(request.getContextPath() + "/admin.do?method=userlist");
    }

    private void disable_user(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String sUserid = request.getParameter("userid");
        User doUser = userDao.get(sUserid);
        doUser.setState(2);
        userDao.update(doUser);
        response.sendRedirect(request.getContextPath() + "/admin.do?method=userlist");
    }

    private void upgrade_user(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String sUserid = request.getParameter("userid");
        User doUser = userDao.get(sUserid);
        doUser.setLevel(1);
        userDao.update(doUser);
        response.sendRedirect(request.getContextPath() + "/admin.do?method=userlist");
    }

    private void demotion_user(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String sUserid = request.getParameter("userid");
        User doUser = userDao.get(sUserid);
        doUser.setLevel(0);
        userDao.update(doUser);
        response.sendRedirect(request.getContextPath() + "/admin.do?method=userlist");
    }

    private void del_user(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	String sUserid = request.getParameter("userid");
    	userDao.remove(sUserid);
        response.sendRedirect(request.getContextPath() + "/admin.do?method=userlist");
    }
}