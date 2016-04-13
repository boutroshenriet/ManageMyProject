/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Pierre
 */
@Entity
@Table(name = "features")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Features.findAll", query = "SELECT f FROM Features f"),
    @NamedQuery(name = "Features.findById", query = "SELECT f FROM Features f WHERE f.id = :id"),
    @NamedQuery(name = "Features.findByName", query = "SELECT f FROM Features f WHERE f.name = :name"),
    @NamedQuery(name = "Features.findByState", query = "SELECT f FROM Features f WHERE f.state = :state"),
    @NamedQuery(name = "Features.findByDate", query = "SELECT f FROM Features f WHERE f.date = :date"),
    @NamedQuery(name = "Features.findByComment", query = "SELECT f FROM Features f WHERE f.comment = :comment"),
    @NamedQuery(name = "Features.findByTheme", query = "SELECT f FROM Features f WHERE f.theme = :theme"),
    @NamedQuery(name = "Features.findByOwner", query = "SELECT f FROM Features f WHERE f.owner = :owner")})
public class Features implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "name")
    private String name;
    @Column(name = "state")
    private Boolean state;
    @Column(name = "date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @Column(name = "comment")
    private String comment;
    @Column(name = "theme")
    private String theme;
    @Column(name = "owner")
    private String owner;
    @JoinColumn(name = "id_subject", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Subjects idSubject;
    @JoinColumn(name = "id_user", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Users idUser;

    public Features() {
    }

    public Features(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getState() {
        return state;
    }

    public void setState(Boolean state) {
        this.state = state;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public Subjects getIdSubject() {
        return idSubject;
    }

    public void setIdSubject(Subjects idSubject) {
        this.idSubject = idSubject;
    }

    public Users getIdUser() {
        return idUser;
    }

    public void setIdUser(Users idUser) {
        this.idUser = idUser;
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
        if (!(object instanceof Features)) {
            return false;
        }
        Features other = (Features) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Features[ id=" + id + " ]";
    }
    
}
