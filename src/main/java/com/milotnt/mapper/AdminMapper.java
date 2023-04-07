package com.milotnt.mapper;

import com.milotnt.pojo.Admin;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author YangNan [2385522413@qq.com]
 * @date 2023/4/3
 */

@Mapper
public interface AdminMapper {

    Admin selectByAccountAndPassword(Admin admin);

}
