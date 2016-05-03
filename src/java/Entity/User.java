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

/**
 *
 * @author Pierre
 */
@Entity
public class User implements Serializable {
private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;
    private String name;
    private Date signingDate;
    private String password;
    private Integer type;
    
    // Constructors:    
    public User() {
        name = null;
        signingDate = null;
        password = null;
        type = null;
    }
 
    public User(String name, String password, Integer type) {
        this.name = name;
        this.signingDate = new Date(System.currentTimeMillis());
        this.password = password;
        this.type = type;
    }
 
    // String Representation:
    @Override
    public String toString() {
        return getName() + " (signed on " + getSigningDate() + ")";
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
}
