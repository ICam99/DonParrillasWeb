/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crud;

import java.sql.Connection;
//import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author hp
 */
public class CRUD {

    private static final String DELETE_INSUMOS_SQL = "delete from insumos where id = ?;";
    private static final String INSERT_INSUMOS_SQL = "INSERT INTO insumos"
            + "  (id, nombre, cantidad, categoria) VALUES "
            + " (?, ?, ?, ?, ?);";
    private static final String QUERY = "select id,nombre,cantidad,categoria from insumos where id =?";
    private static final String UPDATE_INSUMOS_SQL = "update insumos set nombre = ?, cantidad = ?, categoria = ? where id = ?;";

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here 
    }

    public void deleteRecord() throws SQLException {
        System.out.println(DELETE_INSUMOS_SQL);

        // Step 1: Establishing a Connection
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "root");
                // Step 2:Create a statement using connection object
                Statement statement = connection.createStatement();) {

            // Step 3: Execute the query or update query
            int result = statement.executeUpdate(DELETE_INSUMOS_SQL);
            System.out.println("Number of records affected :: " + result);
        } catch (SQLException e) {

            // print SQL exception information
            printSQLException(e);
        }

        // Step 4: try-with-resource statement will auto close the connection.
    }

    public void insertRecord(int id, String nombre, int cantidad, String categoria) throws SQLException {
//        int id = 0;
//        String nombre = null;
//        int cantidad = 0;
//        String categoria = null;

        System.out.println(INSERT_INSUMOS_SQL);
        // Step 1: Establishing a Connection
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "root");
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INSUMOS_SQL)) {
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, nombre);
            preparedStatement.setInt(3, cantidad);
            preparedStatement.setString(4, categoria);

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            preparedStatement.executeUpdate();
        } catch (SQLException e) {

            // print SQL exception information
            printSQLException(e);
        }

        // Step 4: try-with-resource statement will auto close the connection.
    }

    public void selectRecord() throws SQLException {
        int idAux = 0;
// using try-with-resources to avoid closing resources (boiler plate code)

        // Step 1: Establishing a Connection
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "root");
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(QUERY);) {

            preparedStatement.setInt(1, idAux);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                String password = rs.getString("password");
                System.out.println(id + "," + name + "," + email + "," + country + "," + password);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        // Step 4: try-with-resource statement will auto close the connection.
    }

    public void updateRecord() throws SQLException {
        int id = 0;
        String nombre = null;
        int cantidad = 0;
        String categoria = null;
        
        System.out.println(UPDATE_INSUMOS_SQL);
        // Step 1: Establishing a Connection
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/mysql_database?useSSL=false", "root", "root");
                // Step 2:Create a statement using connection object
                PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_INSUMOS_SQL)) {
            preparedStatement.setString(1, nombre);
            preparedStatement.setInt(2, cantidad);
            preparedStatement.setString(3, categoria);
            preparedStatement.setInt(4, id);

            // Step 3: Execute the query or update query
            preparedStatement.executeUpdate();
        } catch (SQLException e) {

            // print SQL exception information
            printSQLException(e);
        }

        // Step 4: try-with-resource statement will auto close the connection.
    }

    public static void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
