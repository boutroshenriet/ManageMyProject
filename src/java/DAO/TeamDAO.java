/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import javax.ejb.Stateless;
import Entity.Team;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
/**
 *
 * @author Guillaume
 */
@Stateless
public class TeamDAO {
    @PersistenceContext(unitName="ManageMyProjectPU") 
    private EntityManager em;
 
    // Stores a new guest: 
    public void persist(Team team) {
        em.persist(team);
    }
 
    // Stores a new guest: 
    public void merge(Team team) {
        em.merge(team);
    }
    
    // Retrieves all the users:
    public List<Team> getAllTeams() {
        TypedQuery<Team> query = em.createQuery(
            "SELECT g FROM Team g ORDER BY g.id", Team.class);
        return query.getResultList();
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
