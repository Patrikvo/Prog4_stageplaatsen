package Beans;

import DAL.Stageplaats;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Patrik
 */
@Stateless
public class DatabaseFacadeEJB {

    @PersistenceContext(unitName = "StageplaatsenPU")
    private EntityManager em;
    
    /**
     * Querries the database for all stageplaatsen.
     * @return List of all Stageplaatsen
     */
    public List<Stageplaats> getAllStageplaatsen(){
        Query AllStageplaatsenQuery = em.createNamedQuery("Stageplaats.findAll");
        List<Stageplaats> resultList = AllStageplaatsenQuery.getResultList();
        return resultList;
    }
    

    /**
     * Querries the database for a stageplaats with the specified ID.
     * @param id key of the specific stageplaats.
     * @return the Stageplaats or null if not found.
     */
    public Stageplaats getStageplaats(int id){
        Query stageplaatsQuery = em.createNamedQuery("Stageplaats.findById");
        stageplaatsQuery.setParameter("id", id);
        Stageplaats stageplaats = null;
        try{
            // Trows exception if no result is found.
            stageplaats = (Stageplaats)stageplaatsQuery.getSingleResult();
        }
        catch(Exception ex){
            stageplaats = null;
        }
        return stageplaats;
    }
    

    /**
     * Searches the database for entries containing the specified search terms.
     * @param titelPart Part of the title searched for.
     * @param omschrijvingPart Part of the Omschrijving searched for.
     * @param bedrijfsnaamPart Part of the Bedrijfsnaam searched for.
     * @param stadPart Part of the stad searched for.
     * @return List of stageplaatsen matching the search terms.
     */
    public List<Stageplaats> performSearch(String titelPart, String omschrijvingPart, String bedrijfsnaamPart, String stadPart) {

        String sql = "SELECT x FROM Stageplaats x WHERE x.titel LIKE '%" + titelPart +
                "%' AND x.omschrijving LIKE '%" + omschrijvingPart +
                "%' AND x.bedrijfID.naam LIKE '%" + bedrijfsnaamPart + 
                "%' AND x.bedrijfID.stad LIKE '%" + stadPart + "%'";
        Query stageplaatsenQuery = em.createQuery(sql);
        
        List<Stageplaats> resultList = stageplaatsenQuery.getResultList();

        return resultList;
    }
}
