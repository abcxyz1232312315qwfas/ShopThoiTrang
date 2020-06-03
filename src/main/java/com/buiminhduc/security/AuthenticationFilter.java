package com.buiminhduc.security;

import com.buiminhduc.common.constant.RoleConstant;
import com.buiminhduc.model.response.RoleResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.service.RoleService;
import com.buiminhduc.service.impl.RoleServiceImpl;
import com.buiminhduc.service.session.SessionUtil;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(urlPatterns = {"/admin-home","/admin-table-order-detail","/admin-table-order","/admin-table-product","/admin-table-product-insert","/admin-home-email","/admin-table","/WishList","/MyCart","/checkout"})
public class AuthenticationFilter implements Filter {
    private RoleService roleService;

    public AuthenticationFilter(){
        roleService = new RoleServiceImpl();
    }

    @Override
    public void init(FilterConfig filterConfig) {

    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request,"USER");
        RoleResponse roleResponse = null;
            if (userResponse == null) {
                RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
                rd.forward(request,response);
            } else {
                roleResponse = roleService.findById(userResponse.getRoleId());
                if (RoleConstant.ADMIN.getValue().equals(roleResponse.getName()) || RoleConstant.USER.getValue().equals(roleResponse.getName())) {
                    filterChain.doFilter(request,response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/views/web/404.jsp");
                    rd.forward(request,response);
                }
            }
    }

    @Override
    public void destroy() {

    }
}
