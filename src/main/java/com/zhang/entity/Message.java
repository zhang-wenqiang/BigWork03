package com.zhang.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/*
 *   时间：2021/12/10
 *
 *
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Message {

    private int id;
    private String userName;
    private String time;
    private String context;

    public void setTime(Date time) {
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");

        this.time =df.format(time);
    }
}
