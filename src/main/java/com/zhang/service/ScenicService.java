package com.zhang.service;

import com.zhang.entity.ScenicSpot;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
public interface ScenicService {

    List<ScenicSpot> selectScenicSpots();

    List<ScenicSpot> selectScenicSpotsByName(String name);
}
