package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import com.Dao.ExerciesDao;
import com.model.Exercise;


@WebServlet("/exercise")
public class ExerciseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Resource(name = "jdbc/dashboard") 
    private DataSource dataSource;
    private ExerciesDao exerciseDao;
    
    @Override
	public void init() throws ServletException {
		
		super.init();
		try {
			exerciseDao = new ExerciesDao(dataSource);
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
	}
    
	public ExerciseController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String theCommand = request.getParameter("command");
			if(theCommand == null) {
				theCommand = "dash";
			}
			switch(theCommand) {
			case "dash":
				listExercise(request, response);
				break;
			case "UPDATE":
				updateScore(request, response);
				break;
			default:
				listExercise(request, response);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	private void updateScore(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("eid"));
		String comment = request.getParameter("comment");
		double score = Double.parseDouble(request.getParameter("score"));
		Exercise  theExercise = new Exercise(id, "", "", "", comment, score);
		exerciseDao.updateScores(theExercise);
		listExercise(request, response);
		
	}

	private void listExercise(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		List<Exercise> exercise = exerciseDao.getExercise();
		request.setAttribute("list_exercise", exercise);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/dashboard.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
