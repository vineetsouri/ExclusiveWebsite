class HomeController < ApplicationController
  def welcome
    if current_ticket
      @waiting_count = Ticket.waiting.count
      @current_ticket = current_ticket.ticket
      @new_ticket = Ticket.new
      @new_ticket.ticket_no = Ticket.count + 1
      @seconds_left = CurrentTicket.seconds_left
    else
      @seconds_left = 0
    end
  end
end
