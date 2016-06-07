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
import javax.persistence.ManyToMany;
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
    private String pseudo;
    private String name;
    private String lastname;
    
    @Temporal(TemporalType.DATE)
    private Date signingDate;
    
    private String password;
    private Integer type;
    
    @ManyToOne
    private Year year;
    
    @ManyToMany
    private Collection<Document> document;
    
    @ManyToOne
    private Groups group;
    
    @ManyToOne
    private Session session;

    @OneToMany(mappedBy="user")
    private Collection<Feature> feature;
    
    @OneToMany(mappedBy="user")
    private Collection<Subject> subject;
    
    @OneToMany(mappedBy="client")
    private Collection<Subject> clientSubject;
    
    @ManyToOne
    private Team team;
    
    // Constructors:    
    public User() {
        pseudo = null;
        name = null;
        lastname = null;
        signingDate = null;
        password = null;
        type = null;
    }
 
    public User(String pseudo, String password, Integer type) {
        this.pseudo = pseudo;
        this.name = name;
        this.lastname = lastname;
        this.signingDate = new Date(System.currentTimeMillis());
        this.password = password;
        this.type = type;
    }
 
    public User(String name, String password, Integer type, Session session) {
        this.name = name;
        this.signingDate = new Date(System.currentTimeMillis());
        this.password = password;
        this.type = type;
        this.session = session;
    }
    
    // String Representation:
    @Override
    public String toString() {
        return getName();
    }
    
    public String toString2() {
        String[] tab = {"Professeur", "Client", "Elève", "Tuteur"};
        return getName() + " de type " + tab[getType() - 1];
    }

    /**
     * @return the pseudo
     */
    public String getPseudo() {
        return pseudo;
    }

    /**
     * @param pseudo the pseudo to set
     */
    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
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

    /**
     * @return the document
     */
    public Collection<Document> getDocument() {
        return document;
    }

    /**
     * @param document the document to set
     */
    public void setDocument(Collection<Document> document) {
        this.document = document;
    }

    /**
     * @return the group
     */
    public Groups getGroup() {
        return group;
    }

    /**
     * @param group the group to set
     */
    public void setGroup(Groups group) {
        this.group = group;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
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
     /* return the session
     */
     
    public Session getSession() {
        return session;
    }

    /**
     * @param session the session to set
     */
    public void setSession(Session session) {
        this.session = session;
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
}
