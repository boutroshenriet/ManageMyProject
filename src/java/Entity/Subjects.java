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
@Table(name = "subjects")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Subjects.findAll", query = "SELECT s FROM Subjects s"),
    @NamedQuery(name = "Subjects.findById", query = "SELECT s FROM Subjects s WHERE s.id = :id"),
    @NamedQuery(name = "Subjects.findByYear", query = "SELECT s FROM Subjects s WHERE s.year = :year")})
public class Subjects implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "year")
    private Integer year;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idSubject")
    private Collection<Features> featuresCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idSubject")
    private Collection<Teams> teamsCollection;
    @JoinColumn(name = "id_year", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Years idYear;
    @JoinColumn(name = "id_customer", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Users idCustomer;

    public Subjects() {
    }

    public Subjects(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    @XmlTransient
    public Collection<Features> getFeaturesCollection() {
        return featuresCollection;
    }

    public void setFeaturesCollection(Collection<Features> featuresCollection) {
        this.featuresCollection = featuresCollection;
    }

    @XmlTransient
    public Collection<Teams> getTeamsCollection() {
        return teamsCollection;
    }

    public void setTeamsCollection(Collection<Teams> teamsCollection) {
        this.teamsCollection = teamsCollection;
    }

    public Years getIdYear() {
        return idYear;
    }

    public void setIdYear(Years idYear) {
        this.idYear = idYear;
    }

    public Users getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(Users idCustomer) {
        this.idCustomer = idCustomer;
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
        if (!(object instanceof Subjects)) {
            return false;
        }
        Subjects other = (Subjects) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Subjects[ id=" + id + " ]";
    }
    
}
