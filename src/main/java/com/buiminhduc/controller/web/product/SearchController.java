package com.buiminhduc.controller.web.product;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.paging.PageRequest;
import com.buiminhduc.repository.ProductRepository;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.service.session.SessionUtil;
import com.buiminhduc.util.FormUtil;
import com.buiminhduc.util.HttpUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class SearchController extends HttpServlet {
    private ProductService productService;
    private PageResponse<ProductResponse> pageResponse;
    public SearchController() {
        productService= (ProductService) BeanFactory.getBeans().get("productService");
        pageResponse= new PageResponse<>();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageResponse pageResponse = FormUtil.toModel(PageResponse.class, request);
        response.sendRedirect("/product?page=1&maxPageItem=5&sortName=null&sortBy=null&ten="+pageResponse.getTen()+"");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public static void main(String[] args) throws Exception {
        ProductService productService= (ProductService) BeanFactory.getBeans().get("productService");
        ProductEntity productEntities = productService.findById(2);
        System.out.println(productEntities.toString());
    }
}
