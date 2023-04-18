package com.zhang.dao;

import com.zhang.entity.Ticket;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/*
 *   时间：2021/12/12
 *
 *
 */
public interface TicketMapper {

    List<Ticket> selectTickets();

    List<Ticket> selectTicketsByName(@Param("ticketName") String name);


    List<Ticket> selectTicketByID(@Param("id") int id);

    int updateTicket();

    int deleteTicket(int id);

    int insertTicket(Ticket ticket);
}
