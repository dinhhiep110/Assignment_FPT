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
    private boolean status;
}
