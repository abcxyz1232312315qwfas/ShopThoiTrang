package com.buiminhduc.repository.impl;

import com.buiminhduc.model.entity.ContactEntity;
import com.buiminhduc.model.entity.CouponEntity;
import com.buiminhduc.repository.ContactRepository;
import com.buiminhduc.repository.CouponRepository;
import com.buiminhduc.util.MySqlConnectionUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContactRepositoryImpl extends BasicQuery<ContactEntity, Integer> implements ContactRepository {
}
