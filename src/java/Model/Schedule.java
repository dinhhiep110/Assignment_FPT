/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Duy Hiep
 */
public class Schedule {
    private int id;
    private Match match;
    private ArrayList<Team []> listTeam = new ArrayList<>();

    public Schedule() {
    }

    public Schedule(int id, Match match) {
        this.id = id;
        this.match = match;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Match getMatch() {
        return match;
    }

    public void setMatch(Match match) {
        this.match = match;
    }

    public ArrayList<Team[]> getListTeam() {
        return listTeam;
    }

    public void setListTeam(ArrayList<Team[]> listTeam) {
        this.listTeam = listTeam;
    }

   
    
    
}
