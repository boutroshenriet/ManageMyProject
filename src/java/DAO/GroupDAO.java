/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Groups;

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

public class GroupDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(Groups group) {

        em.persist(group);
        
    }
 
    // Retrieves all the users:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<Groups> getAllGroups() {
      
        TypedQuery<Groups> query = em.createQuery("SELECT g FROM Groups g ORDER BY g.id", Groups.class);
       
        return query.getResultList();    
    }
    
    public List<Groups> getGroupById(String id) {
      
        TypedQuery<Groups> query = em.createQuery("SELECT g FROM Groups g WHERE g.id = " + id, Groups.class);
       
        return query.getResultList();    
    }
}
