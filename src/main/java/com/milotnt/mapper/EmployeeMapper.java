package com.milotnt.mapper;

import com.milotnt.pojo.Employee;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author YangNan [2385522413@qq.com]
 * @date 2023/4/2
 */

@Mapper
public interface EmployeeMapper {

    //查询所有教练
    List<Employee> findAll();

    //根据教练账号删除教练
    Boolean deleteByEmployeeAccount(Integer employeeAccount);

    //添加新教练
    Boolean insertEmployee(Employee employee);

    //根据教练账号修改会员信息
    Boolean updateMemberByEmployeeAccount(Employee employee);

    //根据教练账号查询教练
    List<Employee> selectByEmployeeAccount(Integer employeeAccount);

    //查询教练数
    Integer selectTotalCount();

    Employee selectOneByEmployeeAccount(Integer employeeAccount);

    void updateyuyueMessageByEmployeeAccount(Employee employee);
}
