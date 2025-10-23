
package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDUtil {

    private static final String URL = "jdbc:mysql://localhost:3306/bdgonzalezams";
    private static final String USER = "root";
    private static final String PASS = "";

    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASS);
    }
}

