package com.bo.entity;

import java.time.LocalDate;

/**
 * @author ty
 * @ClassName User
 * @Description 用户实体类
 * @Date 2019/10/2
 * @Version 1.0
 **/
public class User {
    private  Integer id;
    private  String account;
    private  String password;
    private  String nickname;
    private  String avatar;
    private  String address;
    private LocalDate joinDate;

    public User() {
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setJoinDate(LocalDate joinDate) {
        this.joinDate = joinDate;
    }

    public Integer getId() {
        return id;
    }

    public String getAccount() {
        return account;
    }

    public String getPassword() {
        return password;
    }

    public String getNickname() {
        return nickname;
    }

    public String getAvatar() {
        return avatar;
    }

    public String getAddress() {
        return address;
    }

    public LocalDate getJoinDate() {
        return joinDate;
    }

    public User(Integer id, String account, String password, String nickname, String avatar, String address, LocalDate joinDate) {
        this.id = id;
        this.account = account;
        this.password = password;
        this.nickname = nickname;
        this.avatar = avatar;
        this.address = address;
        this.joinDate = joinDate;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                ", avatar='" + avatar + '\'' +
                ", address='" + address + '\'' +
                ", joinDate=" + joinDate +
                '}';
    }
}
