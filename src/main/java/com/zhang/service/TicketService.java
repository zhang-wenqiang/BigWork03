package com.zhang.service;

import com.zhang.entity.Ticket;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/*
 *   时间：2021/12/12
 *
 *
 */
public interface TicketService {

    List<Ticket> selectTickets();

    List<Ticket> selectTicketsByName(String name);

    List<Ticket> selectTicketByID(int id);
}
