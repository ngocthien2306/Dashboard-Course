package com.Dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.model.Exercise;


public class ExerciesDao {
	private DataSource dataSource;
	public ExerciesDao(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	String sql = "SELECT * FROM exercise order by id asc";
	public List<Exercise> getExercise() throws SQLException {
		List<Exercise> exercise = new ArrayList<>();
		Connection myCon = null;
		Statement mySta = null;
		ResultSet myRes = null;
		try {
			myCon = dataSource.getConnection();
			mySta = myCon.createStatement();
			myRes = mySta.executeQuery(sql);
			while (myRes.next()) {
				int id = myRes.getInt("id");
				String header = myRes.getString("header");
				String title = myRes.getString("titles");
				String description = myRes.getString("descriptions");
				String comment = myRes.getString("comment");
				double score = myRes.getDouble("score");
				String click = myRes.getString("click");
				String linkcode = myRes.getString("linkcode");
				String linkfolder = myRes.getString("linkfolder");
				int process = myRes.getInt("process");
				Exercise theExercise = new Exercise(id, header, title, description, comment, score, linkcode, linkfolder, click, process);
				exercise.add(theExercise);
			}
			return exercise;
		}
		finally {
			close(myCon, mySta, myRes);
		}
		
	}
	private void close(Connection myCon, Statement mySta, ResultSet myRes) {
		try {
			if(myCon != null) {
				myCon.close();
			}
			if(mySta != null) {
				mySta.close();
			}
			if(myRes != null) {
				myRes.close();
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public void updateScores(Exercise theExercise) throws SQLException {
		Connection myCon = null;
		PreparedStatement myRta = null;
		try {
			myCon = dataSource.getConnection();
			String sql = "update exercise set comment = ?, score = ?, process = ? where id = ?";
			myRta = myCon.prepareStatement(sql);
			myRta.setString(1,theExercise.getComment());
			myRta.setDouble(2, theExercise.getScore());
			myRta.setInt(3, theExercise.getProcess());
			myRta.setInt(4, theExercise.getId());
			myRta.execute();
		}
		finally {
			close(myCon, myRta, null);
		}
		
	}
}
