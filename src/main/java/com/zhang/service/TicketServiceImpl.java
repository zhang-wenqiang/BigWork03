package com.zhang.service;

import com.zhang.dao.TicketMapper;
import com.zhang.entity.Ticket;

import java.util.List;

/*
 *   时间：2021/12/12
 *
 *
 */
public class TicketServiceImpl implements TicketService{

    private TicketMapper ticketMapper;

    public void setTicketMapper(TicketMapper ticketMapper) {
        this.ticketMapper = ticketMapper;
    }

    @Override
    public List<Ticket> selectTickets() {
        return ticketMapper.selectTickets();
    }

    @Override
    public List<Ticket> selectTicketsByName(String name) {
        return ticketMapper.selectTicketsByName(name);
    }

    @Override
    public List<Ticket> selectTicketByID(int id) {
        return ticketMapper.selectTicketByID(id);
    }
}
