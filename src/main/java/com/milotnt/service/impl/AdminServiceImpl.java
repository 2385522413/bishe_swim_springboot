package com.milotnt.service.impl;

import com.milotnt.mapper.AdminMapper;
import com.milotnt.pojo.Admin;
import com.milotnt.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author YangNan [2385522413@qq.com]
 * @date 2023/4/2
 */

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin adminLogin(Admin admin) {
        return adminMapper.selectByAccountAndPassword(admin);
    }
}
