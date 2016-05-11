/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.Subject;
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
public class SubjectDao {
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
 
    // Stores a new guest: 
    public void persist(Subject subject) {
        em.persist(subject);
    }
 
    // Retrieves all the users:
    public List<Subject> getAllSubjects() {
        TypedQuery<Subject> query = em.createQuery(
            "SELECT g FROM Subject g ORDER BY g.id", Subject.class);
        return query.getResultList();
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
