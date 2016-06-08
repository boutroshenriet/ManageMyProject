/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Guillaume
 */
@Entity
public class Feature implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id@GeneratedValue
    private Long id;
    
    private int fstate;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dateAdd;
    
    private String objet;
    
    private String comment;
    
    @ManyToOne
    private Theme theme;
    
    private int owner;
    
    private int prio;
    
    @ManyToOne
    private Subject subject;
    
    @ManyToOne
    private Team team;
    
    public Feature(){
        fstate = 0;
    }
    
    public Feature(String objet, String comment, Theme theme, Subject subject, Team team, int owner, int prio){
        fstate = 0;
        this.objet = objet;
        this.comment = comment;
        this.theme = theme;
        this.subject = subject;
        this.team = team;
        this.owner = owner;
        this.dateAdd = new Date(System.currentTimeMillis());
        this.prio = prio;
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
        if (!(object instanceof Feature)) {
            return false;
        }
        Feature other = (Feature) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Features[ id=" + id + " ]";
    }

    /**
     * @return the comment
     */
    public String getComment() {
        return comment;
    }

    /**
     * @param comment the comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
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
     * @return the owner
     */
    public int getOwner() {
        return owner;
    }

    /**
     * @param owner the owner to set
     */
    public void setOwner(int owner) {
        this.owner = owner;
    }

    /**
     * @return the objet
     */
    public String getObjet() {
        return objet;
    }

    /**
     * @param objet the objet to set
     */
    public void setObjet(String objet) {
        this.objet = objet;
    }

    /**
     * @return the fstate
     */
    public int getFstate() {
        return fstate;
    }

    /**
     * @param fstate the fstate to set
     */
    public void setFstate(int fstate) {
        this.fstate = fstate;
    }

    /**
     * @return the prio
     */
    public int getPrio() {
        return prio;
    }

    /**
     * @param prio the prio to set
     */
    public void setPrio(int prio) {
        this.prio = prio;
    }
    
}
