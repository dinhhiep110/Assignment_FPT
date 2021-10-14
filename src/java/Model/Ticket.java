/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Duy Hiep
 */
public class Ticket {
    private int id;
    private Date date_created;
    private Date date_expired;
    private int quantity;
    private Schedule schedule;

    public Ticket() {
    }
    
    
    public Ticket(int id, Date date_created, Date date_expired, int quantity, Schedule schedule) {
        this.id = id;
        this.date_created = date_created;
        this.date_expired = date_expired;
        this.quantity = quantity;
        this.schedule = schedule;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    public Date getDate_expired() {
        return date_expired;
    }

    public void setDate_expired(Date date_expired) {
        this.date_expired = date_expired;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Schedule getSchedule() {
        return schedule;
    }

    public void setSchedule(Schedule schedule) {
        this.schedule = schedule;
    }
    
    
    
    
}
