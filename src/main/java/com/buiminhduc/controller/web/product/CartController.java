package com.buiminhduc.controller.web.product;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.request.CardRequest;
import com.buiminhduc.model.request.WishListRequest;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.repository.impl.CardRepositoryImpl;
import com.buiminhduc.repository.impl.WistlistRepositoryImpl;
import com.buiminhduc.service.CardService;
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
import java.util.List;

@WebServlet("/MyCart")
public class CartController extends HttpServlet {
    private CardService cardService;
    public CartController() {
        cardService= (CardService) BeanFactory.getBeans().get("cardService");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request,"USER");
        PageResponse<SyntheticEntity> pageResponse = FormUtil.toModel(PageResponse.class, request);
        String maSp = request.getParameter("maSp");
        String id = request.getParameter("id");
        String action= request.getParameter("action");
        if (id != null && action.equals("delete")){
            cardService.delete(Integer.parseInt(id));
            if (
                    pageResponse.getPage()==0){
                pageResponse.setMaxPageItem(3);
                pageResponse.setPage(1);
            }
        }
        if (maSp != null && action.equals("insert")){
            if(!cardService.kiemTraSanPhamCoTrongCard(Integer.parseInt(maSp))){
                CardRequest cardRequest= new CardRequest(Integer.valueOf(maSp),1,userResponse.getId());
                cardService.insert(cardRequest);
            }
        }
        request.setAttribute("model",cardService.findAllByIdUser("id_user",String.valueOf(userResponse.getId())));
        request.setAttribute("sum",cardService.tongTien(userResponse.getId()));
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/card.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request,"USER");
        List<SyntheticEntity> syntheticEntityList= cardService.findAllByIdUser("id_user",String.valueOf(userResponse.getId()));
        int result=1;
        try {
        for (int i = 0; i < cardService.countById("id_user", String.valueOf(userResponse.getId())); i++) {
            String index2 = request.getParameter("index"+result+"");
            request.setAttribute("MODEL",((UserResponse) SessionUtil.getSession(request,"USER")));
            cardService.updateCard(index2, String.valueOf(userResponse.getId()),syntheticEntityList.get(i).getMaSp());
            result++;
        } } catch (IndexOutOfBoundsException e) {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/card.jsp");
            rd.forward(request, response);
        }
        response.sendRedirect("/MyCart");
    }

}
