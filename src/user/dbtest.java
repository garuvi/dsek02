package user;


        import java.sql.Connection;
        import java.sql.DriverManager;
        import java.sql.ResultSet;
        import java.sql.SQLException;
        import java.sql.Statement;

public class dbtest {

    public static void main(String[] args) {

        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        String dbUrl = "jdbc:mariadb://localhost/bbs";
        String dbUser = "root";
        String dbPassword = "elsekr@0-0-";

        try {
            Class.forName("org.mariadb.jdbc.Driver");
            System.out.println("Driver Loading OK. *^^*");
        }
        catch (ClassNotFoundException e){
            System.out.println("Driver Loading Error. ^^;");
            System.out.println(e.toString());
            return;
        }

        try {
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            System.out.println("Driver Connection OK. *^^*");
        }
        catch (SQLException e) {
            System.out.println("Driver Connection Error. ^^;");
            System.out.println(e.toString());
            return;
        }
        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM user");
            while (rs.next()) {
                System.out.println(rs.getString(1) + " - " + rs.getString(2));
            }
        } catch (SQLException e){
            System.out.println("executeQuery() Error. ^^;");
            System.out.println(e.toString());
        }

        try {
            if (rs != null) {  rs.close(); }
            if (stmt != null) { stmt.close(); }
            if (conn != null) { conn.close(); }
        } catch (SQLException e){
            System.out.println(e.toString());
        }
    }
}