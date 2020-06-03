package com.buiminhduc.controller.web.product;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.service.BlogService;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.service.session.SessionUtil;
import com.buiminhduc.util.HttpUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/blog")
public class BlogController extends HttpServlet {
    private BlogService blogService;
    public BlogController() {
        blogService= (BlogService) BeanFactory.getBeans().get("blogService");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id= request.getParameter("id");
        if (id != null){
            request.setAttribute("MODEL",blogService.findById(Integer.valueOf(id)));
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/blog/blog-detail.jsp");
            rd.forward(request, response);
        }else {
            request.setAttribute("MODEL",blogService.findAll());
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/blog/blogarchive.jsp");
            rd.forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
