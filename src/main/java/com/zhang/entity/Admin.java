package com.zhang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.awt.*;

/*
 *   时间：2021/12/10
 *
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {

    private int adminID;
    private String adminName;
    private String phone;
    private String pwd;
    private String image;
}
