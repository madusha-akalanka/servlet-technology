package lk.ijse.dep11.webssr;

import lk.ijse.dep11.webssr.to.ItemTo;
import org.apache.commons.dbcp2.BasicDataSource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


@WebServlet("/items")
public class ItemServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {

            BasicDataSource pool = (BasicDataSource) getServletContext().getAttribute("connectionPool");
            Connection connection = pool.getConnection();
            ResultSet rst = connection.createStatement().executeQuery("SELECT * FROM item");
            ArrayList<ItemTo> itemList = new ArrayList<>();
            while (rst.next()) {
                String code = rst.getString("code");
                String description = rst.getString("description");
                int qty = rst.getInt("qty");
                double unit_price = rst.getDouble("unit_price");
                ItemTo itemTo = new ItemTo(code, description, qty, unit_price);
                itemList.add(itemTo);
            }
            connection.close();

                req.setAttribute("itemList",itemList);
                getServletContext().getRequestDispatcher("/WEB-INF/Item.jsp").forward(req,resp);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
