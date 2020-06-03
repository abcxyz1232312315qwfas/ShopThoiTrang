package com.buiminhduc.controller.admin.api;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.service.ProductService;
import com.buiminhduc.util.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/api-admin-product")
public class ProductApi extends HttpServlet {
    private ProductService productService;

    public ProductApi() {
        this.productService = (ProductService) BeanFactory.getBeans().get("productService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ProductRequest productRequest = HttpUtil.of(req.getReader()).toModel(ProductRequest.class);
        productService.insert(productRequest);
        System.out.println(productRequest);
        mapper.writeValue(resp.getOutputStream(),productRequest);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ProductRequest updateUser = HttpUtil.of(req.getReader()).toModel(ProductRequest.class);
        productService.update(updateUser);
        mapper.writeValue(resp.getOutputStream(),updateUser);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        PageResponse pageResponse = HttpUtil.of(req.getReader()).toModel(PageResponse.class);
        UserEntity userEntity = HttpUtil.of(req.getReader()).toModel(UserEntity.class);
        int[] a = pageResponse.getIds();
        productService.deleteByIds(pageResponse.getIds());
        mapper.writeValue(resp.getOutputStream(),userEntity);
    }
}
