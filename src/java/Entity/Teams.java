/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Pierre
 */
@Entity
@Table(name = "teams")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Teams.findAll", query = "SELECT t FROM Teams t"),
    @NamedQuery(name = "Teams.findById", query = "SELECT t FROM Teams t WHERE t.id = :id"),
    @NamedQuery(name = "Teams.findBySujet", query = "SELECT t FROM Teams t WHERE t.sujet = :sujet")})
public class Teams implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "sujet")
    private Integer sujet;
    @JoinColumn(name = "id_group", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Groups idGroup;
    @JoinColumn(name = "id_subject", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Subjects idSubject;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTeam")
    private Collection<Meetings> meetingsCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idTeam")
    private Collection<Users> usersCollection;

    public Teams() {
    }

    public Teams(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSujet() {
        return sujet;
    }

    public void setSujet(Integer sujet) {
        this.sujet = sujet;
    }

    public Groups getIdGroup() {
        return idGroup;
    }

    public void setIdGroup(Groups idGroup) {
        this.idGroup = idGroup;
    }

    public Subjects getIdSubject() {
        return idSubject;
    }

    public void setIdSubject(Subjects idSubject) {
        this.idSubject = idSubject;
    }

    @XmlTransient
    public Collection<Meetings> getMeetingsCollection() {
        return meetingsCollection;
    }

    public void setMeetingsCollection(Collection<Meetings> meetingsCollection) {
        this.meetingsCollection = meetingsCollection;
    }

    @XmlTransient
    public Collection<Users> getUsersCollection() {
        return usersCollection;
    }

    public void setUsersCollection(Collection<Users> usersCollection) {
        this.usersCollection = usersCollection;
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
        if (!(object instanceof Teams)) {
            return false;
        }
        Teams other = (Teams) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Teams[ id=" + id + " ]";
    }
    
}
