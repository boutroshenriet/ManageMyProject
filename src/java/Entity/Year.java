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
import javax.persistence.OneToMany;

/**
 *
 * @author Pierre
 */
@Entity
public class Year implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private Integer yearNumber;
    
    @OneToMany(mappedBy = "user")
    private Collection<User> users;
    
    public Year(){
        yearNumber = null;
    }
    
    public Year(Integer yearNumber){
        this.yearNumber = yearNumber;
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
        if (!(object instanceof Year)) {
            return false;
        }
        Year other = (Year) object;
        if ((this.getId() == null && other.getId() != null) || (this.getId() != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Year[ id=" + getId() + " ]";
    }

    /**
     * @return the yearNumber
     */
    public Integer getYearNumber() {
        return yearNumber;
    }

    /**
     * @param yearNumber the yearNumber to set
     */
    public void setYearNumber(Integer yearNumber) {
        this.yearNumber = yearNumber;
    }
    
}
