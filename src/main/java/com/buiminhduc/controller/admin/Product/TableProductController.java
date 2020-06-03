package com.buiminhduc.controller.admin.Product;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.constant.CRUD;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.paging.PageRequest;
import com.buiminhduc.repository.impl.RoleRepositoryImpl;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.util.FormUtil;
import com.buiminhduc.util.MessageUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin-table-product")
public class TableProductController extends HttpServlet {
    private ProductService productService;
    public TableProductController() {
        this.productService = (ProductService) BeanFactory.getBeans().get("productService");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageResponse<ProductResponse> pageResponse = FormUtil.toModel(PageResponse.class, request);
        String url = "";
        if (pageResponse.getType().equalsIgnoreCase(String.valueOf(CRUD.LIST))){
            pageResponse.setTotalItem((int) productService.count());
            pageResponse.setTotalPage((int) Math.ceil((double) pageResponse.getTotalItem() / pageResponse.getMaxPageItem()));
            PageRequest pageRequest = new PageRequest(pageResponse.getPage(), pageResponse.getMaxPageItem());
            pageResponse.setSortBy("NgayDang");
            pageResponse.setSortName("desc");
            pageResponse.setListResult(productService.findAll(pageRequest,pageResponse.getSortBy(),pageResponse.getSortName(),pageResponse.getTen()));
            request.setAttribute("model",pageResponse);
            url= "/views/admin/product/table.jsp";
        }else if (pageResponse.getType().equalsIgnoreCase(String.valueOf(CRUD.EDIT))){
            String id = request.getParameter("id");
            if (id != null){
                ProductEntity productEntity = productService.findById(Integer.valueOf(id));
                request.setAttribute("userResponse",productEntity);
            }
            url="/views/admin/product/edit.jsp";
            request.setAttribute("model",pageResponse);
            request.setAttribute("role", new RoleRepositoryImpl().findAll());
        }
        MessageUtil.showMessage(request);
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
