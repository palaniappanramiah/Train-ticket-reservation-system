package trs.rs.s;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class serv1
 */
public class serv1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public serv1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//getpassengers
		try{
		DbClass dbc=new DbClass();
		
		TrainDetails td=new TrainDetails();
		
		Connection c =new DbConnect().getDbConn();
		
		ServletContext sc=getServletContext();
		
		ResultSet rs=dbc.getPassangers(Integer.parseInt(request.getParameter("tid")), Integer.parseInt(request.getParameter("date")), c);
		System.out.println("back to servlet");
		request.setAttribute("list",rs);
		System.out.println("added");
		RequestDispatcher rd=request.getRequestDispatcher("/resultpass.jsp");
		if (rd != null) rd.forward(request, response);
		}catch(Exception e){System.out.println("error");}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//gettrains from db
		try{
		DbClass dbc=new DbClass();
		TrainDetails td=new TrainDetails();
		Connection c =new DbConnect().getDbConn();
		ServletContext sc=getServletContext();
		
		
		td.setTrainSource(request.getParameter("source"));
		System.out.println(request.getParameter("source"));
		
		td.setTrainDest(request.getParameter("dest"));
		System.out.println(request.getParameter("dest"));
		
		td.type=request.getParameter("classopt");
		System.out.println(request.getParameter("classopt"));
		
		String date=request.getParameter("theDate");
		System.out.println(request.getParameter("theDate"));
		
		String value=request.getParameter("date");
		System.out.println(value);
		sc.setAttribute("selected_day", value);// to know which date was selected by the user
		
		td.setArrTime(Float.parseFloat(request.getParameter("atime")));
		System.out.println(Float.parseFloat(request.getParameter("atime")));
		
		td.setDepTime(Float.parseFloat(request.getParameter("dtime")));
		System.out.println(Float.parseFloat(request.getParameter("dtime")));
		
		ResultSet a=dbc.getTrains(td, c);
		
		System.out.println("sent to dbc");
		
		request.setAttribute("trains", a);
		sc.setAttribute("result_trains",a);
		RequestDispatcher dispatcher =getServletContext().getRequestDispatcher("/resulttrain.jsp");
		dispatcher.forward( request, response );
/*

		response.sendRedirect("resulttrain.jsp");
*/	
		}catch(Exception e)
		{
			System.out.println("error");
		}
	}

}
