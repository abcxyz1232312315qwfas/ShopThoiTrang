package com.buiminhduc.controller.admin;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.repository.EmailSubRepository;
import com.buiminhduc.repository.impl.EmailSubRepositoryImpl;
import com.buiminhduc.repository.impl.UserRepositoryImpl;
import com.buiminhduc.service.CheckOutService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-home-email"})
public class EmailController extends HttpServlet {
    private EmailSubRepository emailSubRepository;

    public EmailController() {
        emailSubRepository= new EmailSubRepositoryImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("email",emailSubRepository.findAll());
        request.setAttribute("count", emailSubRepository.count());
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/email.jsp");
        rd.forward(request, response);
    }

}
