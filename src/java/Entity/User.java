/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Collection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Pierre
 */
@Entity
public class User implements Serializable {
private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    private Long id;
    private String name;
    
    @Temporal(TemporalType.DATE)
    private Date signingDate;
    
    private String password;
    private Integer type;
    
    @ManyToOne
    private Year year;
    
    @OneToMany(mappedBy="user")
    private Collection<Group> group;
    
    @OneToMany(mappedBy="user")
    private Collection<Document> document;
    
    @OneToMany(mappedBy="user")
    private Collection<Feature> feature;
    
    @OneToMany(mappedBy="user")
    private Collection<Subject> subject;
    
    @ManyToOne
    private Team team;
    
    @ManyToOne
    private Team team;
    
    // Constructors:    
    public User() {
        name = null;
        signingDate = null;
        password = null;
        type = null;
    }
 
    public User(String name, String password, Integer type) {
        this.name = name;
        this.signingDate = new Date(System.currentTimeMillis());
        this.password = password;
        this.type = type;
    }
 
    // String Representation:
    @Override
    public String toString() {
        return getName() + " (signed on " + getSigningDate() + ")";
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the signingDate
     */
    public Date getSigningDate() {
        return signingDate;
    }

    /**
     * @param signingDate the signingDate to set
     */
    public void setSigningDate(Date signingDate) {
        this.signingDate = signingDate;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the type
     */
    public Integer getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the year
     */
    public Year getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(Year year) {
        this.year = year;
    }

    /**
     * @return the team
     */
    public Team getTeam() {
        return team;
    }

    /**
     * @param team the team to set
     */
    public void setTeam(Team team) {
        this.team = team;
    }
}
