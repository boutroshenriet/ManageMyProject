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
 
    // Constructors:
    public User() {
        name = null;
        signingDate = null;
        password = null;
    }
 
    public User(String name, String password) {
        this.name = name;
        this.signingDate = new Date(System.currentTimeMillis());
        this.password = password;
    }
 
    // String Representation:
    @Override
    public String toString() {
        return name + " (signed on " + signingDate + ")";
    }
}
