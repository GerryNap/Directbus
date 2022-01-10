package com.directbus.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.directbus.persistence.dao.AgencyUserDao;
import com.directbus.persistence.dao.ClientUserDao;
import com.directbus.persistence.dao.RouteDao;
import com.directbus.persistence.dao.StationDao;
import com.directbus.persistence.dao.TicketDao;
import com.directbus.persistence.dao.JDBC.AgencyUserDaoJDBC;
import com.directbus.persistence.dao.JDBC.ClientUserDaoJDBC;
import com.directbus.persistence.dao.JDBC.RouteDaoJDBC;
import com.directbus.persistence.dao.JDBC.StationDaoJDBC;
import com.directbus.persistence.dao.JDBC.TicketDaoJDBC;



public class DatabaseHandler {
	private static DatabaseHandler instance = null;
	public static DatabaseHandler getInstance() {
		if (instance == null) {
			instance = new DatabaseHandler();
		}
		return instance;
	}
	
	Connection conn;
	
	private DatabaseHandler() {
		try {
			conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/directBus", "postgres", "giannimannarix99");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	
	public ClientUserDao getStudenteDao() {
		return new ClientUserDaoJDBC(conn);
	}
	
	public AgencyUserDao getCorsoDiLaureaDao() {
		return new AgencyUserDaoJDBC(conn);
	}
	
	public TicketDao getScuolaDao() {
		return new TicketDaoJDBC(conn);
	}
	
	public RouteDao getDipartimentoDao() {
		return new RouteDaoJDBC(conn);
	}
	
	public StationDao getDipartimentoDao() {
		return new StationDaoJDBC(conn);
	}

}