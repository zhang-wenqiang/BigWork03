package com.zhang.controller;

import com.zhang.entity.Ticket;
import com.zhang.service.TicketService;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/*
 *   时间：2021/12/12
 *
 *
 */
@Controller
@RequestMapping("/ticket")
public class TicketController {

    @Autowired
    @Qualifier("ticketService")
    private TicketService ticketService;

    @RequestMapping("/toSelectTicket")
    public String toSelectTicket(Model model){

        List<Ticket> tickets = ticketService.selectTickets();

        model.addAttribute("tickets",tickets);
        return "selectTicket";
    }

    @RequestMapping("/selectTicket")
    public String selectTicket(String ticketName, Model model){

        List<Ticket> tickets = ticketService.selectTicketsByName("%"+ticketName.trim()+"%");

        if (tickets.size()==0){
            tickets = ticketService.selectTickets();
            model.addAttribute("error","没有该门票");
        }
        model.addAttribute("tickets",tickets);
        return "selectTicket";
    }

    @RequestMapping("/selectTicket2/{id}")
    public String selectTicket2(@PathVariable("id") int id, Model model){

        List<Ticket> tickets = ticketService.selectTicketByID(id);

        if (tickets==null){
            tickets = ticketService.selectTickets();
            model.addAttribute("error","没有该景点门票");
        }
        model.addAttribute("tickets",tickets);
        return "selectTicket";
    }
}
