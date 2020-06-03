package com.buiminhduc.security;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.constant.RoleConstant;
import com.buiminhduc.exception.ObjectNotFoundException;
import com.buiminhduc.model.request.Auth;
import com.buiminhduc.model.response.RoleResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.service.RoleService;
import com.buiminhduc.service.UserService;
import com.buiminhduc.service.impl.RoleServiceImpl;
import com.buiminhduc.service.impl.UserServiceImpl;
import com.buiminhduc.service.session.SessionUtil;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

public class Authen {
    public static Authen of(){
        return new Authen();
    }
    public String auth(Auth auth, HttpServletRequest request) throws IllegalAccessException, InvocationTargetException, ObjectNotFoundException, InstantiationException, SQLException, NoSuchMethodException, NoSuchFieldException {
        UserResponse userResponse = new UserServiceImpl().findUserByUserNameAndPassWord(auth);
        SessionUtil.setSession(request, "USER", userResponse);
        if (userResponse == null){
            SessionUtil.removeSession(request,"USER");
        }
        String url=null ;
        RoleResponse roleResponse = new RoleServiceImpl().findById(userResponse.getRoleId());
        if(RoleConstant.ADMIN.getValue().equals(roleResponse.getName())){
            url="/admin-home";
        }else if(RoleConstant.USER.getValue().equals(roleResponse.getName())){
            url="/index";
        }
        return url;
    }
}
