package trs.rs.s;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ser2
 */
public class ser2 extends HttpServlet {
	private static final long serialVersionUID =0 ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ser2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//redirect to passenger.jsp
		try{String trainId=request.getParameter("trainselected");
		System.out.println(trainId);
		ServletContext sct=getServletContext();
		sct.setAttribute("selected_train",trainId);
		RequestDispatcher rd=request.getRequestDispatcher("/passenger.jsp");
		if (rd != null) rd.forward(request, response);
		}catch(Exception e)
		{ System.out.println("error");}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// registration
		try{
		PrintWriter pw=response.getWriter();
		DbConnect db=new DbConnect();
		Connection c=db.getDbConn();
		AdminClass ob=new AdminClass();
		UserDetails user=new UserDetails();
		user.setFirstName(request.getParameter("fname"));
		System.out.println(request.getParameter("fname"));
		user.setLastName(request.getParameter("lname"));
		System.out.println(request.getParameter("lname"));
		user.setUserLoginId((request.getParameter("uname")));
		System.out.println(request.getParameter("uname"));
		user.setUserPassword(request.getParameter("password"));
		System.out.println(request.getParameter("password"));
		user.setUserEmail(request.getParameter("mailID"));
		System.out.println(request.getParameter("mailid"));
		user.setUserAge(Integer.parseInt((request.getParameter("Age"))));
		System.out.println(request.getParameter("age"));
		user.setUserSex(request.getParameter("Sex"));
		System.out.println(request.getParameter("sex"));
		String s=ob.addUser(user, c);
		if(s.equals("success")){
			System.out.println(s);
		response.sendRedirect("index.jsp");
		}
		else
			System.out.println("fail");

	}
catch(Exception e)
{ System.out.println("error");}
}
}