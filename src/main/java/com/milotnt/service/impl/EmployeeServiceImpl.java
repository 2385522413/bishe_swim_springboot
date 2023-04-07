package com.milotnt.service.impl;

import com.milotnt.mapper.EmployeeMapper;
import com.milotnt.pojo.Employee;
import com.milotnt.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author YangNan [2385522413@qq.com]
 * @date 2023/4/2
 */

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public List<Employee> findAll() {
        return employeeMapper.findAll();
    }

    @Override
    public Boolean deleteByEmployeeAccount(Integer employeeAccount) {
        return employeeMapper.deleteByEmployeeAccount(employeeAccount);
    }

    @Override
    public Boolean insertEmployee(Employee employee) {
        return employeeMapper.insertEmployee(employee);
    }

    @Override
    public Boolean updateMemberByEmployeeAccount(Employee employee) {
        return employeeMapper.updateMemberByEmployeeAccount(employee);
    }

    @Override
    public List<Employee> selectByEmployeeAccount(Integer employeeAccount) {
        return employeeMapper.selectByEmployeeAccount(employeeAccount);
    }

    @Override
    public Integer selectTotalCount() {
        return employeeMapper.selectTotalCount();
    }

    @Override
    public Employee selectOneByEmployeeAccount(Integer employeeAccount) {
        Employee employee = employeeMapper.selectOneByEmployeeAccount(employeeAccount);
        return employee;
    }

    @Override
    public void updateyuyueMessageByEmployeeAccount(Employee employee) {
        employeeMapper.updateyuyueMessageByEmployeeAccount(employee);
    }
}
