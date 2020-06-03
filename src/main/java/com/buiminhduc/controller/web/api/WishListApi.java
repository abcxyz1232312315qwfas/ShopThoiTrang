package com.buiminhduc.controller.web.api;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.entity.WishListEntity;
import com.buiminhduc.model.request.WishListRequest;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.repository.UserRepository;
import com.buiminhduc.repository.WishlistRepository;
import com.buiminhduc.repository.impl.UserRepositoryImpl;
import com.buiminhduc.service.WishListService;
import com.buiminhduc.util.HttpUtil;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/api-user-wishlist")
public class WishListApi extends HttpServlet {
    private WishListService wishListService;

    public WishListApi() {
        this.wishListService = (WishListService) BeanFactory.getBeans().get("wishListService");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");

        WishListRequest wishListRequest = HttpUtil.of(req.getReader()).toModel(WishListRequest.class);
        wishListService.insert(wishListRequest);
        System.out.println(wishListRequest);
        mapper.writeValue(resp.getOutputStream(),wishListRequest);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        PageResponse pageResponse = HttpUtil.of(req.getReader()).toModel(PageResponse.class);
        UserEntity userEntity = HttpUtil.of(req.getReader()).toModel(UserEntity.class);
        int[] a = pageResponse.getIds();
        wishListService.deleteByIds(pageResponse.getIds());
        mapper.writeValue(resp.getOutputStream(),userEntity);
    }
}
