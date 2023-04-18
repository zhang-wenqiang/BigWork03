package com.zhang.service;

import com.zhang.dao.ScenicMapper;
import com.zhang.entity.ScenicSpot;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
public class ScenicServiceImpl implements ScenicService{

    private ScenicMapper scenicMapper;

    public void setScenicMapper(ScenicMapper scenicMapper) {
        this.scenicMapper = scenicMapper;
    }

    @Override
    public List<ScenicSpot> selectScenicSpots() {
        return scenicMapper.selectScenicSpots();
    }

    @Override
    public List<ScenicSpot> selectScenicSpotsByName(String name) {
        return scenicMapper.selectScenicSpotsByName(name);
    }
}
