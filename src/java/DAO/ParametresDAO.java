/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Parametres;

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

public class ParametresDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(Parametres param) {
        em.persist(param);
    }
 
    // Retrieves all the documents:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<Parametres> getAllParametres() {
        
        TypedQuery<Parametres> query = em.createQuery(
            "SELECT g FROM Parametres g", Parametres.class);
       
        return query.getResultList();    
    }
    
    public List<Parametres> getParametresByName(String name) {
        
        TypedQuery<Parametres> query = em.createQuery(
            "SELECT g FROM Parametres g WHERE g.name LIKE '" + name + "'", Parametres.class);
       
        return query.getResultList();    
    }
    
    public long getNbParam() {
        
          TypedQuery<Long> query = em.createQuery(
      "SELECT count(g.id) FROM Parametres g", Long.class);
       
        return (long)query.getSingleResult();    
    }
    
}

