package com.buiminhduc.controller.admin.user;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.constant.CRUD;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.response.PageResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.paging.PageRequest;
import com.buiminhduc.repository.UserRepository;
import com.buiminhduc.repository.impl.RoleRepositoryImpl;
import com.buiminhduc.repository.impl.UserRepositoryImpl;
import com.buiminhduc.service.UserService;
import com.buiminhduc.service.impl.RoleServiceImpl;
import com.buiminhduc.service.impl.UserServiceImpl;
import com.buiminhduc.service.session.SessionUtil;
import com.buiminhduc.util.FormUtil;
import com.buiminhduc.util.MessageUtil;
import org.apache.commons.lang.StringUtils;

import javax.jws.soap.SOAPBinding;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.Normalizer;

@WebServlet("/admin-table")
public class TableUserController extends HttpServlet {
    private UserService userService;
    private UserRepository userRepository;
    public TableUserController() {
        this.userService = (UserService) BeanFactory.getBeans().get("userService");
        this.userRepository = (UserRepository) BeanFactory.getBeans().get("userRepository");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageResponse<UserEntity> pageResponse = FormUtil.toModel(PageResponse.class, request);
        String url = "";
        if (pageResponse.getType().equalsIgnoreCase(String.valueOf(CRUD.LIST))){
            pageResponse.setTotalItem((int) userRepository.count());
            pageResponse.setTotalPage((int) Math.ceil((double) pageResponse.getTotalItem() / pageResponse.getMaxPageItem()));
            PageRequest pageRequest = new PageRequest(pageResponse.getPage(), pageResponse.getMaxPageItem());
            pageResponse.setSortBy("user_name");
            pageResponse.setSortName("asc");
            pageResponse.setListResult(userRepository.findAll(pageRequest,pageResponse.getSortBy(),pageResponse.getSortName(),pageResponse.getTen()));
            request.setAttribute("model",pageResponse);


            url= "/views/admin/user/table.jsp";
        }else if (pageResponse.getType().equalsIgnoreCase(String.valueOf(CRUD.EDIT))){
            String id = request.getParameter("id");
            if (id != null){
                UserResponse userResponse = userService.findById(Integer.valueOf(id));
                request.setAttribute("userResponse",userResponse);
            }
            url="/views/admin/user/edit.jsp";
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
