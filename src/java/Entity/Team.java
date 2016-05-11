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
    
    @OneToMany(mappedBy = "user")
    private Collection<User> users;
    @ManyToOne
    private Subject subject;
    //@ManyToOne(mappedby = "groups")
    //private Collection<Group> groups;
    //@OneToMany(mappedby = "meetings")
    //private Collection<Meeting> meetings;
    
    public Team(){
    }
    
    public Team(String attribute){
        this.attribute = attribute;
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
        return "Entity.Team[ id=" + getId() + " ]";
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

    
}
