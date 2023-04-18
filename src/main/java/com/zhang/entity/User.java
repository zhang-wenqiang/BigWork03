package com.zhang.entity;

import javafx.scene.control.cell.PropertyValueFactory;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/*
 *   时间：2021/12/10
 *
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    private int userID;
    private String userName;
    private String idCard;
    private String phone;
    private String pwd;
    private String image;
}
