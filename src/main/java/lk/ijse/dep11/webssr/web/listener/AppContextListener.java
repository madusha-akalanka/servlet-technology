package lk.ijse.dep11.webssr.web.listener;

import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Connection;
import java.sql.SQLException;

public class AppContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        BasicDataSource pool = new BasicDataSource();
        pool.setUsername("postgres");
        pool.setPassword("postgresql");
        pool.setUrl("jdbc:postgresql://localhost:5432/smart_pos");
        pool.setDriverClassName("org.postgresql.Driver");
        pool.setInitialSize(10);
        pool.setMaxTotal(20);

        sce.getServletContext().setAttribute("connectionPool",pool);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        BasicDataSource pool = (BasicDataSource) sce.getServletContext().getAttribute("connectionPool");

        try {
            pool.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
