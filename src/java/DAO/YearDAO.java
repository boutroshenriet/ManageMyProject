/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Year;

import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.naming.InitialContext;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.UserTransaction;
/**
 *
 * @author Pierre
 */
@Stateless

public class YearDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(Year year) {

        em.persist(year);
        
    }
 
    // Retrieves all the users:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<Year> getAllYears() {

        TypedQuery<Year> query = em.createQuery(
            "SELECT g FROM Year g ORDER BY g.yearNumber", Year.class);
       
        return query.getResultList();    
    }
    
    public List<Year> getYearById(String id) {
      
        TypedQuery<Year> query = em.createQuery(
            "SELECT g FROM Year g WHERE g.id = " + id, Year.class);
       
        return query.getResultList();    
    }
}
