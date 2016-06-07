/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entity.User;

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

public class UserDAO {
// Injected database connection:
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
    
    // Stores a new guest: 
    public void persist(User user) {

        em.persist(user);
    }
    
    // Stores a new guest: 
    public void merge(User user) {

        em.merge(user);
    }
    // Retrieves all the users:
   //@TransactionAttribute(TransactionAttributeType.REQUIRED)
    public List<User> getAllUsers() {
      
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g ORDER BY g.id", User.class);
       
        return query.getResultList();    
    }
    
    public List<User> getUserById(String id) {
      
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g WHERE g.id = " + id, User.class);
       
        return query.getResultList();    
    }
    
    // Retrieves all the teachers (1):
    public List<User> getAllTeachers() {
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g WHERE g.type = 1 ORDER BY g.id", User.class);
        return query.getResultList();
    }
    
    // Retrieves all the customers (2):
    public List<User> getAllClients() {
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g WHERE g.type = 2 ORDER BY g.id", User.class);
        return query.getResultList();
    }
    
    // Retrieves all the students (3):
    public List<User> getAllStudents() {
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g WHERE g.type = 3 ORDER BY g.id", User.class);
        return query.getResultList();
    }
    
    // Retrieves all the tutors (4):
    public List<User> getAllTutors() {
        TypedQuery<User> query = em.createQuery(
            "SELECT g FROM User g WHERE g.type = 4 ORDER BY g.id", User.class);
        return query.getResultList();
    }
}
