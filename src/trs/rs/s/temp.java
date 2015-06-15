package trs.rs.s;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class temp
 */
public class temp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public temp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter p=response.getWriter();
		DbClass dbc=new DbClass();
		DbConnect db=new DbConnect();
		Connection conn=db.getDbConn();
		AdminClass ac=new AdminClass();
		p.println("<html><title>Result></title><body>");
		System.out.println("connection got>>>>>>>>>>>>>>><<<<<<<<<<<<");
		/*
		String to=request.getParameter("to");
		String from=request.getParameter("from");
		System.out.println(to+""+from);
		
		to=to.toUpperCase();
		from=from.toUpperCase();
		
		ArrayList<TrainDetails> trains=dbc.getTrains(from,to, conn);
		System.out.println("trains returned");
		*/
		ResultSet a=dbc.getAllTrains(conn);
		
		/*for(int i=0;i<a.size();i++)
			p.println((a.get(i)).getTrainName()+"-");*/
		/*
		System.out.println("entered get and trains copied");
		for(int i=0;i<trains.size();i++){
			TrainDetails details = (TrainDetails) trains.get(i);
			p.println(details.getAcFare()+"-"+details.getAcSeats()+"-"+details.getArrTime());
		}*/

		/*
		String result=ac.deleteTrain(454,conn);
		p.println(result);
		
		*/
		p.println("</body></html>");
		//response.sendRedirect("traindisp.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
