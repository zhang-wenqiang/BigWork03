package com.zhang.controller;

import com.zhang.entity.ScenicSpot;
import com.zhang.service.ScenicServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/*
 *   时间：2021/12/11
 *
 *
 */
@Controller
@RequestMapping("/scenic")
public class ScenicController {

    @Autowired
    @Qualifier("scenicServiceImpl")
    private ScenicServiceImpl scenicService;

    @RequestMapping("/toCheckScenic")
    public String toCheckScenic(Model model){

        List<ScenicSpot> scenicSpots =scenicService.selectScenicSpots();

        model.addAttribute("scenics",scenicSpots);

        return "checkScenic";
    }

    @RequestMapping("/checkScenic")
    public String checkScenic(String scenicName,Model model){
        List<ScenicSpot> scenicSpots = scenicService.selectScenicSpotsByName("%"+scenicName.trim()+"%");
        if (scenicSpots.size()==0){
            scenicSpots = scenicService.selectScenicSpots();
            model.addAttribute("error","未查到数据");
        }

        model.addAttribute("scenics",scenicSpots);
        return "checkScenic";

    }


}
