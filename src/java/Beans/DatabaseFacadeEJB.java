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
    
    public Stageplaats getStageplaats(int id){
        Query stageplaatsQuery = em.createNamedQuery("Stageplaats.findById");
        stageplaatsQuery.setParameter("id", id);
        Stageplaats stageplaats = null;
        try{
            stageplaats = (Stageplaats)stageplaatsQuery.getSingleResult();
        }
        catch(Exception ex){
            // todo log this.
        }
        return stageplaats;
    }
    
    // TitleSearch, OmschrijvingSearch, BedrijfnaamSearch, StadSearch
    public List<Stageplaats> performSearch(String titelPart, String omschrijvingPart, String bedrijfsnaamPart, String stadPart) {
        String wildcard = "%";
        
        String sql = "SELECT x FROM Stageplaats x WHERE x.titel LIKE '%" + titelPart +
                "%' AND x.omschrijving LIKE '%" + omschrijvingPart +
                "%' AND x.bedrijfID.naam LIKE '%" + bedrijfsnaamPart + 
                "%' AND x.bedrijfID.adresID.stad LIKE '%" + stadPart + "%'";
        Query stageplaatsenQuery = em.createQuery(sql);
        
     /*   stageplaatsenQuery.setParameter("titelPart", wildcard + titelPart + wildcard)
                .setParameter("omschrijvingPart", wildcard + omschrijvingPart + wildcard)
                .setParameter("bedrijfsnaamPart", wildcard + bedrijfsnaamPart + wildcard)
                .setParameter("stadPart", wildcard + stadPart + wildcard);
*/

        
        List<Stageplaats> resultList = stageplaatsenQuery.getResultList();

        return resultList;
    }
    
    
    
}
