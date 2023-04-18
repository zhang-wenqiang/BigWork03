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
public class ScenicSpot {
    private int scenicID;
    private String scenicName;
    private String location;
    private float temperature;
    private float humidity;
    private int pm25;
    private int noise;
    private String image;

}
