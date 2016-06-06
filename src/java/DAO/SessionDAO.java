/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Session;

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

public class SessionDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(Session session) {

        em.persist(session);
        
    }
 
    // Retrieves all the users:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<Session> getAllSessions() {
      
        TypedQuery<Session> query = em.createQuery(
            "SELECT g FROM Session g ORDER BY g.id", Session.class);
       
        return query.getResultList();    
    }
    
    public List<Session> getSessionById(String id) {
      
        TypedQuery<Session> query = em.createQuery(
            "SELECT g FROM Session g WHERE g.id = " + id, Session.class);
       
        return query.getResultList();    
    }
}
