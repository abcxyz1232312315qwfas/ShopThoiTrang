package com.buiminhduc.service;

import com.buiminhduc.model.response.RoleResponse;

import java.util.List;

public interface RoleService {
    RoleResponse findById(int id);
    List<RoleResponse> findAll();
}
