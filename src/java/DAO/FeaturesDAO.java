/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import Entity.Features;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author Guillaume
 */
@Stateless
public class FeaturesDAO {
@PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
 
    // Stores a new guest: 
    public void persist(Features features) {
        em.persist(features);
    }
 
    // Retrieves all the users:
    public List<Features> getAllSubjects() {
        TypedQuery<Features> query = em.createQuery(
            "SELECT g FROM Subject g ORDER BY g.id", Features.class);
        return query.getResultList();
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
