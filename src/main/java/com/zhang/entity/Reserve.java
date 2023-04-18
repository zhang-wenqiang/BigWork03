package com.zhang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

/*
 *   时间：2021/12/10
 *
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reserve {
    private int userID;
    private int ticketID;
    private Date reserveTime;
    private Date deadTime;
}
