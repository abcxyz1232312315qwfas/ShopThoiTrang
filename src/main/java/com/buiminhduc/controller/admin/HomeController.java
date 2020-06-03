package com.buiminhduc.controller.admin;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.paging.PageRequest;
import com.buiminhduc.paging.Pageable;
import com.buiminhduc.repository.ProductRepository;
import com.buiminhduc.repository.impl.CheckOutRepositoryImpl;
import com.buiminhduc.service.CheckOutService;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.service.impl.ProductServiceImpl;
import com.buiminhduc.util.FormUtil;
import com.opensymphony.module.sitemesh.Page;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-home"})
public class HomeController extends HttpServlet {
    private CheckOutService checkOutService;

    public HomeController() {
        checkOutService= (CheckOutService) BeanFactory.getBeans().get("checkOutService");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("order",checkOutService.findAll());
        request.setAttribute("revenue",checkOutService.tongTien());
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
