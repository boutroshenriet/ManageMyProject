/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Document;

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

public class DocumentDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(Document doc) {

        em.persist(doc);
        
    }
 
    // Retrieves all the documents:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<Document> getAllDocuments() {
      
        TypedQuery<Document> query = em.createQuery(
            "SELECT g FROM Document g ORDER BY g.id", Document.class);
       
        return query.getResultList();    
    }
}

