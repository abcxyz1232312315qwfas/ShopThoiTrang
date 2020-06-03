package com.buiminhduc.controller.web;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.service.UserService;
import com.buiminhduc.service.session.SessionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/changepass")
public class ChangePass extends HttpServlet {
    private UserService userService;

    public ChangePass() {
        userService = (UserService) BeanFactory.getBeans().get("userService");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/changpass.jsp");
        rd.forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request,"USER");
        String passO = request.getParameter("passwordO");
        String passN = request.getParameter("passwordN");
        if (passO.equals(userResponse.getPassword())){
            request.setAttribute("message","Success!");
            request.setAttribute("category","success");
            userService.update(passN,userResponse.getId());
        }
        else {
            request.setAttribute("message","Wrong password!");
            request.setAttribute("category","danger");
        }
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/changpass.jsp");
        rd.forward(request,response);
    }
}
