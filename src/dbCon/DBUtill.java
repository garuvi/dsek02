package dbCon;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

public class DBUtill {
        public static Connection getConnection() throws SQLException {
            DataSource ds = null;
            try {
                Context initContext = new InitialContext();
                Context envContext = (Context) initContext.lookup("java:/comp/env");
                ds = (DataSource) envContext.lookup("jdbc/toy");
            } catch (Exception e) {
                e.printStackTrace();
            }
            return ds.getConnection();
        }

        public static void close(AutoCloseable c) {
            if (c != null) {
                try {
                    c.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }


