/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import Entity.Documents;
/**
 *
 * @author Pierre
 */
@Stateless
public class DocumentsDao {
// Injected database connection:
    @PersistenceContext private EntityManager em;
 
    // Stores a new guest: 
    public void persist(Documents document) {
        em.persist(document);
    }
 
    // Retrieves all the guests:
    public List<Documents> getAllGuests() {
        TypedQuery<Documents> query = em.createQuery(
            "SELECT g FROM Documents g ORDER BY g.id", Documents.class);
        return query.getResultList();
    }
}
