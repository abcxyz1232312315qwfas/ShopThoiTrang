package com.buiminhduc.service.impl;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.annotation.Service;
import com.buiminhduc.converter.UserConverter;
import com.buiminhduc.converter.extend.UserConverters;
import com.buiminhduc.exception.ObjectNotFoundException;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.request.Auth;
import com.buiminhduc.model.request.UserRequest;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.paging.Pageable;
import com.buiminhduc.repository.UserRepository;
import com.buiminhduc.repository.impl.UserRepositoryImpl;
import com.buiminhduc.service.UserService;
import com.buiminhduc.util.MySqlConnectionUtil;
import com.buiminhduc.util.ObjectUtil;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    private UserRepository userRepository;
    private UserConverters userConverter;

    public UserServiceImpl() {
        userRepository = (UserRepository) BeanFactory.getBeans().get("userRepository");
        userConverter = new UserConverters();
    }

    @Override
    public void insert(UserRequest request) throws SQLException {
        UserEntity entity = UserConverter.converToEntity(request);
        new UserRepositoryImpl().insert(entity);
    }

    @Override
    public void update(UserRequest request, int id1){
        UserEntity entity = UserConverter.converToEntity(request, id1);
        new UserRepositoryImpl().update(entity);
    }

    @Override
    public UserResponse findUserByUserNameAndPassWord(Auth auth){
        Optional<UserEntity> userEntity = userRepository.findByUserNameAndPassWord(auth.getUserName(), auth.getPassword());

        UserResponse userResponse = new UserResponse();
        try {
            userEntity.orElseThrow(ObjectNotFoundException::new);
            ObjectUtil.copyProperties(userEntity.get(),userResponse);
            return userResponse;
        } catch (ObjectNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<UserResponse> findAll()  {
        List<UserEntity> userEntities= new UserRepositoryImpl().findAll();
        return userConverter.convertToListResponse(userEntities);
    }

    @Override
    public void delete(int id) {
        try {
            userRepository.delete(id);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override
    public UserResponse findById(Integer id) {
        UserResponse userResponseTemp = new UserResponse();
        UserEntity userEntity = userRepository.findById(id);
        UserResponse userResponse = userConverter.converToResponse(userResponseTemp,userEntity);
        return userResponse;
    }

    @Override
    public void deleteByIds(int[] ids) {
        for (int id: ids) {
            new UserRepositoryImpl().delete(id);
        }
    }

    @Override
    public List<UserResponse> findAll(Pageable pageable) {
        List<UserEntity> userEntities= new UserRepositoryImpl().findAll(pageable);
        return userConverter.convertToListResponse(userEntities);
    }

    @Override
    public void update(String passN, int Id) {
        String sql = "update User set Password = "+passN+" where id="+Id+"";
        try {
            new MySqlConnectionUtil().thucThiCauLenhSQL(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
