package com.milotnt.pojo;

/**
 * @author YangNan [2385522413@qq.com]
 * @date 2023/4/3
 */
public class Employee {

    private Integer employeeAccount;
    private String employeeName;
    private String employeeGender;
    private Integer employeeAge;
    private String entryTime;
    private String staff;
    private String employeeMessage;
    private String state;
    private String yuyueName;

    public Employee() {
    }

    public Employee(Integer employeeAccount, String employeeName, String employeeGender, Integer employeeAge, String entryTime, String staff, String employeeMessage, String state, String yuyueName) {
        this.employeeAccount = employeeAccount;
        this.employeeName = employeeName;
        this.employeeGender = employeeGender;
        this.employeeAge = employeeAge;
        this.entryTime = entryTime;
        this.staff = staff;
        this.employeeMessage = employeeMessage;
        this.state = state;
        this.yuyueName = yuyueName;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "employeeAccount=" + employeeAccount +
                ", employeeName='" + employeeName + '\'' +
                ", employeeGender='" + employeeGender + '\'' +
                ", employeeAge=" + employeeAge +
                ", entryTime='" + entryTime + '\'' +
                ", staff='" + staff + '\'' +
                ", employeeMessage='" + employeeMessage + '\'' +
                ", state='" + state + '\'' +
                ", yuyueName='" + yuyueName + '\'' +
                '}';
    }

    public Integer getEmployeeAccount() {
        return employeeAccount;
    }

    public void setEmployeeAccount(Integer employeeAccount) {
        this.employeeAccount = employeeAccount;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeGender() {
        return employeeGender;
    }

    public void setEmployeeGender(String employeeGender) {
        this.employeeGender = employeeGender;
    }

    public Integer getEmployeeAge() {
        return employeeAge;
    }

    public void setEmployeeAge(Integer employeeAge) {
        this.employeeAge = employeeAge;
    }

    public String getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(String entryTime) {
        this.entryTime = entryTime;
    }

    public String getStaff() {
        return staff;
    }

    public void setStaff(String staff) {
        this.staff = staff;
    }

    public String getEmployeeMessage() {
        return employeeMessage;
    }

    public void setEmployeeMessage(String employeeMessage) {
        this.employeeMessage = employeeMessage;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getYuyueName() {
        return yuyueName;
    }

    public void setYuyueName(String yuyueName) {
        this.yuyueName = yuyueName;
    }
}
