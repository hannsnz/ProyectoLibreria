package logicos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionJV {
    Connection cx;
    public Connection conectar() throws SQLException {
        String db = "proyectoDB";
        String usuario = "root";
        String passwd = "mario_PASSWD31";
        String url = "jdbc:mysql://localhost:3306/proyectoDB";
        try{
            cx= DriverManager.getConnection(url,usuario,passwd);
            System.out.println("Se conecto a la base de datos");

        } catch (SQLException e) {
            System.out.println("Fallo al acceder a la base de datos");
        }
        return cx;
    }

    public Connection cerrar(){
        try{
            cx.close();
        } catch (SQLException e){
            System.out.println(e);
            System.out.println("NO SE CERRO LA CONEXION");
        }
        return cx;
    }
}
