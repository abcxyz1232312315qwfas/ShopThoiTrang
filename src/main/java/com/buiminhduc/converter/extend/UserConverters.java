package com.buiminhduc.converter.extend;

import com.buiminhduc.converter.impl.ConverterImpl;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.request.UserRequest;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.model.response.UserResponse;

import java.util.ArrayList;
import java.util.List;

public class UserConverters extends ConverterImpl<UserRequest, UserResponse, UserEntity>{

    @Override
    public UserEntity converToEntity(UserEntity userEntity, UserRequest userRequest) {
        return super.converToEntity(userEntity, userRequest);
    }

    @Override
    public UserResponse converToResponse(UserResponse userResponse, UserEntity userEntity) {
        return super.converToResponse(userResponse, userEntity);
    }
    @Override
    public List<UserResponse> convertToListResponse(List<UserEntity> ts){
        List<UserResponse> vs = new ArrayList<>();
            for (UserEntity userEntity: ts) {
                UserResponse userResponse = new UserResponse();
                userResponse= converToResponse(userResponse,userEntity);
                vs.add(userResponse);
            }
        return vs;
    }
}
