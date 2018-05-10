/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAL.Stageplaats;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author patrik
 */
@Stateless
public class DatabaseFacadeEJB {

    @PersistenceContext(unitName = "StageplaatsenPU")
    private EntityManager em;
    
    public List<Stageplaats> getAllStageplaatsen(){
        Query AllStageplaatsenQuery = em.createNamedQuery("Stageplaats.findAll");
        List<Stageplaats> resultList = AllStageplaatsenQuery.getResultList();
        return resultList;
        
    }
    
    
}
