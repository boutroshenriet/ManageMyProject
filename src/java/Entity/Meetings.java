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
@Table(name = "meetings")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Meetings.findAll", query = "SELECT m FROM Meetings m"),
    @NamedQuery(name = "Meetings.findById", query = "SELECT m FROM Meetings m WHERE m.id = :id"),
    @NamedQuery(name = "Meetings.findByStart", query = "SELECT m FROM Meetings m WHERE m.start = :start"),
    @NamedQuery(name = "Meetings.findByEnd", query = "SELECT m FROM Meetings m WHERE m.end = :end"),
    @NamedQuery(name = "Meetings.findByComment", query = "SELECT m FROM Meetings m WHERE m.comment = :comment")})
public class Meetings implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "start")
    @Temporal(TemporalType.TIMESTAMP)
    private Date start;
    @Column(name = "end")
    @Temporal(TemporalType.TIMESTAMP)
    private Date end;
    @Column(name = "comment")
    private String comment;
    @JoinColumn(name = "id_team", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Teams idTeam;

    public Meetings() {
    }

    public Meetings(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Teams getIdTeam() {
        return idTeam;
    }

    public void setIdTeam(Teams idTeam) {
        this.idTeam = idTeam;
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
        if (!(object instanceof Meetings)) {
            return false;
        }
        Meetings other = (Meetings) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Meetings[ id=" + id + " ]";
    }
    
}
