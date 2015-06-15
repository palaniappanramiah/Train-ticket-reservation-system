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
 * Servlet implementation class ser3
 */
public class ser3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ser3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//deletion
		try{
		AdminClass adc=new AdminClass();
		
		int id=Integer.parseInt(request.getParameter("tid"));
		
		Connection c =new DbConnect().getDbConn();
		
		ServletContext sc=getServletContext();
		
		String result=adc.deleteTrain(id, c);
		System.out.println("back to servlet");
		
		PrintWriter p=response.getWriter();
		if(result.equals("success"))
		{
			System.out.println("deleted");
		p.println("<html><body> deletion sucessful <a href=\"DelTrain.jsp\">click here to go back</a></body></html>" );
		}
		
	}catch(Exception e)
	{ System.out.println("error");}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//add trains
		try{
		AdminClass adc=new AdminClass();
		
		TrainDetails td=new TrainDetails();
		td.setAcFare(Integer.parseInt(request.getParameter("tafare")));
		td.setAcSeats(Integer.parseInt(request.getParameter("taseats")));
		td.setArrTime(Float.parseFloat(request.getParameter("tatime")));
		td.setDepTime(Float.parseFloat(request.getParameter("tdtime")));
		td.setNonAcFare(Integer.parseInt(request.getParameter("tnafare")));
		td.setNonAcSeats(Integer.parseInt(request.getParameter("tnaseats")));
		td.setTrainDest(request.getParameter("tdest"));
		td.setTrainId(Integer.parseInt(request.getParameter("tid")));
		td.setTrainName(request.getParameter("tname"));
		td.setTrainSource(request.getParameter("tsource"));
		
		
		Connection c =new DbConnect().getDbConn();
		PrintWriter p=response.getWriter();
		ServletContext sc=getServletContext();
		System.out.println("came");
		String result=adc.addTrain(td, c);
		System.out.println("back to servlet");
		if( result.equals("success")){
		System.out.println("added");
		p.println("<html><body> Addition sucessful <a href=\"add_modify.jsp\">click here to go back</a></body></html>" );
		}
		else
			p.println("<html><body> Addition unsucessful <a href=\"add_modifyTrain.jsp\">click here to go back</a></body></html>" );	

	}
catch(Exception e)
{ System.out.println("error");}
}
}