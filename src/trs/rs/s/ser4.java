package trs.rs.s;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ser4
 */
public class ser4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ser4() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//view all trains
		ServletContext rs=getServletContext();
		DbClass dbc=new DbClass();
		Connection c=(new DbConnect()).getDbConn();
		ResultSet r=dbc.getAllTrains(c);
		rs.setAttribute("alltrains", r);
		request.setAttribute("trains", r);
		System.out.println("came out");
		//PrintWriter pw=response.getWriter();
		//RequestDispatcher rd=request.getRequestDispatcher("/resultalltrains.jsp");
		//System.out.println("redirect created");
		response.sendRedirect("resultalltrains.jsp");
		/*
		if (rd != null){	System.out.println(" no error");
							rd.forward(request, response);
		}
		
		else
			System.out.println("error");
*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// add passsenger
		try{
		ServletContext rs=getServletContext();
	AdminClass adc=new AdminClass();
	Connection c=(new DbConnect()).getDbConn();
	PassengerDetails pd=new PassengerDetails();
	PrintWriter pw=response.getWriter();
	pd.setPassengerAge(Integer.parseInt(request.getParameter("Age")));
	pd.setPassengerDate(Integer.parseInt((String)rs.getAttribute("selected_day")));
	pd.setPassengerSex(request.getParameter("sex"));
	pd.setPassengerName(request.getParameter("name"));
	pd.setPassengerClass(request.getParameter("Class1"));
	pd.setPassengerTrainId(Integer.parseInt((String)rs.getAttribute("selected_train")));
	
	String result=adc.addPassenger(pd, c);
	if(result.equals("success"))
			{
		pw.write("<html><body>passenger added successfully  <br>" +
				"<a href=\"index.jsp\" >click here to go to home page</a></body><html>");
			}
	}
catch(Exception e){
	System.out.println("error");
	}
}

}
