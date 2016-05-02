/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.User;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
/**
 *
 * @author Pierre
 */
@Stateless
public class UserDao {
// Injected database connection:
    @PersistenceContext private EntityManager em;
 
    // Stores a new guest: 
    public void persist(User user) {
        em.persist(user);
    }
 
    // Retrieves all the guests:
    public List<User> getAllUsers() {
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g ORDER BY g.id", User.class);
        return query.getResultList();
    }
}
