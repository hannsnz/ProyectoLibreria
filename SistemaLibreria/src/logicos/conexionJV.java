package logicos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexionJV {
    Connection cx;
    public Connection conectar() throws SQLException {
        String db = "proyectoDB";
        String usuario = "admin";
        String passwd = "EquipoRSCO31";
        String url = "jdbc:mysql://2806:2f0:7080:925e:5028:d8ac:c4b7:c519:3306/proyectoDB";
        try{
            cx= DriverManager.getConnection(url,usuario,passwd);


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
