/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 *
 * @author Guillaume
 */
@Entity
public class Subject implements Serializable {
private static final long serialVersionUID = 1L;
  
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Long id;
    private String nameSubject;
    
    private String Description;

    @ManyToOne
    private Year year;
    
    @ManyToOne
    private User user; 
    
    @OneToMany(mappedBy="subject")
    private Collection<Feature> feature;
    
    @OneToMany(mappedBy="subject")
    private Collection<Team> teams;
    
    @ManyToOne
    private User client;
    
    
    // Constructors:    
    public Subject() {
        nameSubject = null;
        client = null;
        Description = null;
    }
    // Il faut rajouter sur ces fonctions les variables ID qui seront présentent dans la session
     public Subject(String nameSubject, User client, String Description, Year year, User user){
        this.nameSubject = nameSubject;
        this.client = client;
        this.Description = Description;
        this.year = year;
        this.user = user;
    }
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Subject)) {
            return false;
        }
        Subject other = (Subject) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Sujet " + getNameSubject() + "/Client " + getClient() + "/Description " + getDescription();
    }

    /**
     * @return the nameSubject
     */
    public String getNameSubject() {
        return nameSubject;
    }

    /**
     * @param nameSubject the nameSubject to set
     */
    public void setNameSubject(String nameSubject) {
        this.nameSubject = nameSubject;
    }

    /**
     * @return the Description
     */
    public String getDescription() {
        return Description;
    }

    /**
     * @param Description the Description to set
     */
    public void setDescription(String Description) {
        this.Description = Description;
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
     * @return the teams
     */
    public Collection<Team> getTeams() {
        return teams;
    }

    /**
     * @param teams the teams to set
     */
    public void setTeams(Collection<Team> teams) {
        this.teams = teams;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the feature
     */
    public Collection<Feature> getFeature() {
        return feature;
    }

    /**
     * @param feature the feature to set
     */
    public void setFeature(Collection<Feature> feature) {
        this.feature = feature;
    }

    /**
     * @return the client
     */
    public User getClient() {
        return client;
    }

    /**
     * @param client the client to set
     */
    public void setClient(User client) {
        this.client = client;
    }


}
