
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionDB {
    private static Connection conn = null;
    public static Connection getConnection(){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
        }catch(ClassNotFoundException ex){
            Logger.getLogger(ConnectionDB.class.getName()).log(Level.SEVERE, null,ex);
        }
        try{
            conn = DriverManager.getConnection("jdbc:sqlserver://Localhost:1433;database=QuanLySV;user=sa;password=bjmheo99");
        }catch(SQLException e){
            Logger.getLogger(ConnectionDB.class.getName()).log(Level.SEVERE, null,e);
            System.out.println(e.toString());
        }
        return conn;
    }
    public void CloseConnection(){
        if(conn != null){
            try {
                if(!conn.isClosed())
                    conn.close();
                conn =null;
            } catch (SQLException ex) {
                Logger.getLogger(ConnectionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}