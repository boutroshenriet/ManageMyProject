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
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import DAO.SubjectDAO;
import java.util.ArrayList;
import javax.ejb.EJB;
/**
 *
 * @author Florian
 */

@Entity
public class Team implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id @GeneratedValue
    private Long id;
    
    private String attribute;
    
    @OneToMany(mappedBy = "team")
    private Collection<User> users;
    
    @ManyToOne
    private Subject subject;
    
    @ManyToOne
    private Groups group;
    
    @OneToMany(mappedBy = "team")
    private Collection<Meeting> meeting;
    
    @OneToMany(mappedBy = "team")
    private Collection<Feature> feature;
    
    public Team(){
        attribute = null;
        users = new ArrayList<User>();
    }
    
    public Team(String attribute){
        this.attribute = attribute;
        users = new ArrayList<User>();
    }
    
     public Team(String attribute, Collection<User> users){
        this.attribute = attribute;
        this.users = users;
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
        hash += (getId() != null ? getId().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Team)) {
            return false;
        }
        Team other = (Team) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return getAttribute();
    }

    /**
     * @return the subject
     */
    public Subject getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    /**
     * @return the attribute
     */
    public String getAttribute() {
        return attribute;
    }

    /**
     * @param attribute the attribute to set
     */
    public void setAttribute(String attribute) {
        this.attribute = attribute;
    }

    public void addUser(User user) {
        if (!getUsers().contains(user)) {
            getUsers().add(user);
            if (user.getTeam() != null) {
                user.getTeam().getUsers().remove(user);
            }
            user.setTeam(this);
        }
    }
    
    public Collection<User> getUsers() {
        return users;
    }

    /**
     * @param users the users to set
     */
    public void setUsers(Collection<User> users) {
        this.users = users;
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
    
}
