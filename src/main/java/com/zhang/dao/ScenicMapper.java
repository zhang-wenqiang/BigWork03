package com.zhang.dao;

import com.zhang.entity.ScenicSpot;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
public interface ScenicMapper {

    List<ScenicSpot> selectScenicSpots();

    List<ScenicSpot> selectScenicSpotsByName(@Param("scenicName") String name);


    int updateScenic(ScenicSpot scenicSpot);
}
