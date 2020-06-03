package com.buiminhduc.repository.impl;

import com.buiminhduc.common.annotation.Repository;
import com.buiminhduc.model.entity.Role;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.repository.RoleRepository;

import java.util.List;

@Repository
public class RoleRepositoryImpl extends BasicQuery<Role, Integer> implements RoleRepository {
    @Override
    public <S extends Role> S findById(Integer integer) {
        return super.findById(integer);
    }

    @Override
    public <S extends Role> List<S> findAll() {
        return super.findAll();
    }
}
