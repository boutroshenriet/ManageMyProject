/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Year;
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
public class YearDao {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
 
    // Stores a new guest: 
    public void persist(Year year) {
        em.persist(year);
    }
 
    // Retrieves all the guests:
    public List<Year> getAllYears() {
        TypedQuery<Year> query = em.createQuery(
            "SELECT * FROM years ORDER BY id", Year.class);
        return query.getResultList();
    }
}
