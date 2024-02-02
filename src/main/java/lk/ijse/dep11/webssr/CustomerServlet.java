package lk.ijse.dep11.webssr;

import lk.ijse.dep11.webssr.to.CustomerTo;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


@WebServlet({"/customers"})
public class CustomerServlet extends HttpServlet {






    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
//            Class.forName("org.postgresql.Driver");
//            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/smart_pos", "postgres", "postgresql");

            BasicDataSource pool = (BasicDataSource) getServletContext().getAttribute("connectionPool");
            Connection connection = pool.getConnection();
            ResultSet rst = connection.createStatement().executeQuery("SELECT  * FROM customer");

            ArrayList<CustomerTo> customerList = new ArrayList<>();
            while (rst.next()) {
                String id = rst.getString("id");
                String name = rst.getString("name");
                String address = rst.getString("address");
                CustomerTo customerTo = new CustomerTo(id, name, address);
                customerList.add(customerTo);
            }

            connection.close();
            req.setAttribute("customerList", customerList);
            getServletContext().getRequestDispatcher("/WEB-INF/customers.jsp").forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
