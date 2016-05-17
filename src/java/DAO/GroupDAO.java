/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Group;

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

public class GroupDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(Group group) {

        em.persist(group);
        
    }
 
    // Retrieves all the users:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<Group> getAllGroups() {
      
        TypedQuery<Group> query = em.createQuery(
            "SELECT g FROM Group g ORDER BY g.id", Group.class);
       
        return query.getResultList();    
    }
}
