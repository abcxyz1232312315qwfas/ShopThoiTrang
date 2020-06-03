package com.buiminhduc.controller.web.product;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.CheckOutEntity;
import com.buiminhduc.model.request.Auth;
import com.buiminhduc.model.request.CheckOutRequest;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.service.CardService;
import com.buiminhduc.service.CheckOutService;
import com.buiminhduc.service.WishListService;
import com.buiminhduc.service.impl.CheckOutServiceImpl;
import com.buiminhduc.service.session.SessionUtil;
import com.buiminhduc.util.FormUtil;
import com.buiminhduc.util.ObjectUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/checkout")
public class CheckOutController extends HttpServlet {
    private CardService cardService;
    private CheckOutService checkOutService;
    public CheckOutController() {
        cardService= (CardService) BeanFactory.getBeans().get("cardService");
        checkOutService= (CheckOutService) BeanFactory.getBeans().get("checkOutService");
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(req,"USER");
        req.setAttribute("model",checkOutService.listNameProduct(userResponse.getId()));
        req.setAttribute("sum",cardService.tongTien(userResponse.getId()));
        RequestDispatcher rd = req.getRequestDispatcher("/views/web/checkout.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(req,"USER");
        CheckOutRequest checkOutRequest = FormUtil.toModel(CheckOutRequest.class, req);
        checkOutRequest.setModifiedDate(LocalDate.now());
        checkOutRequest.setListProduct(ObjectUtil.convertListToString(userResponse.getId()));
        checkOutRequest.setTongTien(cardService.tongTien(userResponse.getId()));
        checkOutRequest.setId_user(userResponse.getId());
        checkOutService.insert(checkOutRequest);
        resp.sendRedirect("/index");
    }
}
