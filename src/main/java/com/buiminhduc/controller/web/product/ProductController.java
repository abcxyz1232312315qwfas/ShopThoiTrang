package com.buiminhduc.controller.web.product;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.paging.PageRequest;
import com.buiminhduc.repository.ProductRepository;
import com.buiminhduc.repository.impl.ProductRepositoryImpl;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.service.impl.ProductServiceImpl;
import com.buiminhduc.service.session.SessionUtil;
import com.buiminhduc.util.FormUtil;
import com.buiminhduc.util.MySqlConnectionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/product")
public class ProductController extends HttpServlet {
    private ProductService productService;
    private PageResponse<ProductResponse> pageResponse;
    public ProductController() {
        productService= (ProductService) BeanFactory.getBeans().get("productService");
        pageResponse= new PageResponse<>();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageResponse pageResponse = FormUtil.toModel(PageResponse.class, request);
        pageResponse.setTotalItem((int) productService.count());

        if (pageResponse.getSortName().equals("asc") || pageResponse.getSortName().equals("desc") || pageResponse.getSortName().equals("null")){
                if (pageResponse.getPage()==0){
                    pageResponse.setMaxPageItem(9);
                    pageResponse.setPage(1);
            }
        }

        if (pageResponse.getTen()!= null && !pageResponse.getTen().equals("null") && !pageResponse.getTen().equals("")){
            pageResponse.setTotalItem((int) productService.countById("ten",pageResponse.getTen()));
        }

        pageResponse.setSortBy("giaBan");
        pageResponse.setTotalPage((int) Math.ceil((double) pageResponse.getTotalItem() / pageResponse.getMaxPageItem()));
        PageRequest pageRequest = new PageRequest(pageResponse.getPage(), pageResponse.getMaxPageItem());
        pageResponse.setListResult(productService.findAll(pageRequest,pageResponse.getSortBy(),pageResponse.getSortName(),pageResponse.getTen()));
        request.setAttribute("model",pageResponse);
            request.setAttribute("recently",new ProductRepositoryImpl().findAllLimit3());
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/product/product.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
