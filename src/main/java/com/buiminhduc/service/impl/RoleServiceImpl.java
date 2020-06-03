package com.buiminhduc.service.impl;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.annotation.Service;
import com.buiminhduc.exception.ObjectNotFoundException;
import com.buiminhduc.model.entity.Role;
import com.buiminhduc.model.response.RoleResponse;
import com.buiminhduc.repository.RoleRepository;
import com.buiminhduc.repository.impl.RoleRepositoryImpl;
import com.buiminhduc.service.RoleService;
import com.buiminhduc.service.UserService;
import com.buiminhduc.util.ObjectUtil;
import java.util.List;
import java.util.Map;

@Service
public class RoleServiceImpl implements RoleService {
    private RoleRepository roleRepository;
    public RoleServiceImpl(){
        roleRepository = (RoleRepository) BeanFactory.getBeans().get("roleRepository");
    }
    @Override
    public RoleResponse findById(int id)  {
        Role role = roleRepository.findById(id);
        if(role==null)
            try {
                throw new ObjectNotFoundException();
            } catch (ObjectNotFoundException e) {
                e.printStackTrace();
            }

        RoleResponse roleResponse = new RoleResponse();

        ObjectUtil.copyProperties(role,roleResponse);

        return roleResponse;
    }

    @Override
    public List<RoleResponse> findAll() {
        return null;
    }
    public static void main(String[] args) {
        UserService userService = (UserService) BeanFactory.getBeans().get("userService");//(RoleRepository) BeanFactory.getBeans().get("roleRepository");
        System.out.println(userService.findById(2));
    }
}
