package com.buiminhduc.controller.web;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.repository.ProductRepository;
import com.buiminhduc.repository.impl.ProductRepositoryImpl;
import com.buiminhduc.service.BlogService;
import com.buiminhduc.service.CardService;
import com.buiminhduc.service.CheckOutService;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.service.session.SessionUtil;
import com.buiminhduc.util.HttpUtil;
import com.sun.xml.internal.fastinfoset.algorithm.BASE64EncodingAlgorithm;
import org.omg.PortableServer.POA;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/index")
public class HomeController extends HttpServlet {
    private ProductService productService;
    private BlogService blogService;
    public HomeController() {
        productService= (ProductService) BeanFactory.getBeans().get("productService");
        blogService= (BlogService) BeanFactory.getBeans().get("blogService");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpUtil.setCategory(request,productService);
        request.setAttribute("item",blogService.findById(1));
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
