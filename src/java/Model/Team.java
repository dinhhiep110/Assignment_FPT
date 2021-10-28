/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


/**
 *
 * @author Duy Hiep
 */
public class Team {
    private int id;
    private String name;
    private String location;
    private String publish_year;

    public Team() {
    }

    public Team(int id, String name, String location, String publish_year) {
        this.id = id;
        this.name = name;
        this.location = location;
        this.publish_year = publish_year;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPublish_year() {
        return publish_year;
    }

    public void setPublish_year(String publish_year) {
        this.publish_year = publish_year;
    }
    
    
}
