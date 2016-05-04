/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
    private String Client;
    private String Description;

    @OneToMany
    private Year year;
    
    @OneToMany
    private Team team;
    //Rajouter le lien avec la table features 
    
    // Constructors:    
    public Subject() {
        nameSubject = null;
        Client = null;
        Description = null;
    }
    // Il faut rajouterr sur ces fonctions les variables ID qui seront présentent dans la session
     public Subject(String nameSubject, String Client, String Description){
        this.nameSubject = nameSubject;
        this.Client = Client;
        this.Description = Description;
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
        return "Entity.Subject[ id=" + id + " ]";
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
     * @return the Client
     */
    public String getClient() {
        return Client;
    }

    /**
     * @param Client the Client to set
     */
    public void setClient(String Client) {
        this.Client = Client;
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
    
}
