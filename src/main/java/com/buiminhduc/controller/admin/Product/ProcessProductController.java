package com.buiminhduc.controller.admin.Product;

import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.service.impl.ProductServiceImpl;
import com.buiminhduc.util.FormUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/admin-table-product-insert")
public class ProcessProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProductRequest productRequest = FormUtil.toModel(ProductRequest.class, req);
        productRequest.setNgayDang(LocalDate.now());
        new ProductServiceImpl().insert(productRequest);
        resp.sendRedirect("/admin-table-product?type=list&page=1&maxPageItem=10&message=insert_success");
    }
}
