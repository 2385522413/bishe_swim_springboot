package com.milotnt.controller;

import com.milotnt.pojo.ClassOrder;
import com.milotnt.pojo.ClassTable;
import com.milotnt.pojo.Employee;
import com.milotnt.pojo.Member;
import com.milotnt.service.ClassOrderService;
import com.milotnt.service.ClassTableService;
import com.milotnt.service.EmployeeService;
import com.milotnt.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.sql.In;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author YangNan [2385522413@qq.com]
 * @date 2023/4/9
 */

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private ClassTableService classTableService;

    @Autowired
    private MemberService memberService;

    @Autowired
    private ClassOrderService classOrderService;

    @Autowired
    private EmployeeService employeeService;


    @RequestMapping("/userLogin")
    public String userLogin(Model model, HttpSession session) {
        return "userLogin";
    }


    //跳转个人信息页面
    @RequestMapping("/toUserInfo")
    public String toUserInformation(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        return "userInformation";
    }

    // 跳转到用户预约界面
    @RequestMapping("/toUserYuyue")
    public String toUserYuyue(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        List<Employee> employeeList = employeeService.findAll();
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("member", member);
        return "userYuyue";
    }

    // 跳转到用户预约界面
    @RequestMapping("/yuyue")
    public String toUserYuyue(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response, Integer employeeAccount) throws ServletException, IOException {
        Member member = (Member) session.getAttribute("user");
        Employee employee = employeeService.selectOneByEmployeeAccount(employeeAccount);
        // 执行更新操作
        if (employee.getState().equals("未预约")){
            employee.setState("已预约");
            employee.setYuyueName(member.getMemberName());
        }else if (employee.getYuyueName().equals(member.getMemberName())&&employee.getState().equals("已预约")){
            employee.setState("未预约");
            employee.setYuyueName("无人预约");
        }
        employeeService.updateyuyueMessageByEmployeeAccount(employee);
        List<Employee> employeeList = employeeService.findAll();
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("member", member);
        return "userYuyue";
    }
    @RequestMapping("/yuyue1")
    public String toUserYuyue1(Model model, HttpSession session, Integer employeeAccount) {
        Member member = (Member) session.getAttribute("user");
        Employee employee = employeeService.selectOneByEmployeeAccount(employeeAccount);
        // if当前用户和预约人姓名相同便可以取消预约
        // 执行更新操作
        if (employee.getState().equals("已预约")){
            employee.setState("未预约");
            employee.setYuyueName("无人预约");
        }
        employeeService.updateyuyueMessageByEmployeeAccount(employee);
        List<Employee> employeeList = employeeService.findAll();
        model.addAttribute("employeeList", employeeList);
        model.addAttribute("member", member);
        return "selectEmployee";
    }


    //跳转修改个人信息页面
    @RequestMapping("/toUpdateInfo")
    public String toUpdateUserInformation(HttpSession session, Model model) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        return "updateUserInformation";
    }

    //修改个人信息
    @RequestMapping("/updateInfo")
    public String updateUserInformation(HttpSession session, Member member) {
        Member member1 = (Member) session.getAttribute("user");

        member.setMemberAccount(member1.getMemberAccount());
        member.setCardClass(member1.getCardClass());
        member.setCardTime(member1.getCardTime());
        member.setCardNextClass(member1.getCardNextClass());

        memberService.updateMemberByMemberAccount(member);
        return "userInformation";
    }

    //跳转我的课程页面
    @RequestMapping("/toUserClass")
    public String toUserClass(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        model.addAttribute("member", member);
        Integer memberAccount = member.getMemberAccount();
        List<ClassOrder> classOrderList = classOrderService.selectClassOrderByMemberAccount(memberAccount);
        model.addAttribute("classOrderList", classOrderList);
        return "userClass";
    }

    //退课
    @RequestMapping("delUserClass")
    public String deleteUserClass(Integer classOrderId) {
        classOrderService.deleteByClassOrderId(classOrderId);
        return "redirect:toUserClass";
    }

    //跳转报名选课页面
    @RequestMapping("/toApplyClass")
    public String toUserApplyClass(Model model, HttpSession session) {
        Member member = (Member) session.getAttribute("user");
        List<ClassTable> classList = classTableService.findAll();
        model.addAttribute("member", member);
        model.addAttribute("classList", classList);
        return "userApplyClass";
    }

    //报名选课
    @RequestMapping("/applyClass")
    public String userApplyClass(Integer classId, Model model, HttpSession session) {
        ClassTable classTable = classTableService.selectByClassId(classId);
        Member member = (Member) session.getAttribute("user");

        Integer classId1 = classTable.getClassId();
        String className = classTable.getClassName();
        String coach = classTable.getCoach();
        String classBegin = classTable.getClassBegin();
        String memberName = member.getMemberName();
        Integer memberAccount = member.getMemberAccount();

        ClassOrder classOrder = new ClassOrder(classId1, className, coach, memberName, memberAccount, classBegin);
        Integer memberAccount1 = member.getMemberAccount();
        ClassOrder classOrder1 = classOrderService.selectMemberByClassIdAndMemberAccount(classId1, memberAccount1);

        if (classOrder1 == null) {
            classOrderService.insertClassOrder(classOrder);
        }

        return "redirect:toUserClass";
    }

}
