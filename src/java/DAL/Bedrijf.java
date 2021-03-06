package DAL;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * JPA Enity class Bedrijf
 * @author patrik
 */
@Entity
@Table(name = "bedrijf")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Bedrijf.findAll", query = "SELECT b FROM Bedrijf b")
    , @NamedQuery(name = "Bedrijf.findById", query = "SELECT b FROM Bedrijf b WHERE b.id = :id")
    , @NamedQuery(name = "Bedrijf.findByNaam", query = "SELECT b FROM Bedrijf b WHERE b.naam = :naam")
    , @NamedQuery(name = "Bedrijf.findByContactNaam", query = "SELECT b FROM Bedrijf b WHERE b.contactNaam = :contactNaam")
    , @NamedQuery(name = "Bedrijf.findByContactEmail", query = "SELECT b FROM Bedrijf b WHERE b.contactEmail = :contactEmail")
    , @NamedQuery(name = "Bedrijf.findByActiviteiten", query = "SELECT b FROM Bedrijf b WHERE b.activiteiten = :activiteiten")
    , @NamedQuery(name = "Bedrijf.findByAanwervend", query = "SELECT b FROM Bedrijf b WHERE b.aanwervend = :aanwervend")
    , @NamedQuery(name = "Bedrijf.findByAanmaakDatum", query = "SELECT b FROM Bedrijf b WHERE b.aanmaakDatum = :aanmaakDatum")
    , @NamedQuery(name = "Bedrijf.findByLaatsteWijziging", query = "SELECT b FROM Bedrijf b WHERE b.laatsteWijziging = :laatsteWijziging")})
public class Bedrijf implements Serializable {

    private static final long serialVersionUID = 1L;
    
    /*
        JPA: Columns
    */
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Naam")
    private String naam;
    
    @Size(max = 255)
    @Column(name = "ContactNaam")
    private String contactNaam;
    
    @Size(max = 255)
    @Column(name = "ContactEmail")
    private String contactEmail;
    
    @Size(max = 1000)
    @Column(name = "Activiteiten")
    private String activiteiten;
    
    @Size(max = 255)
    @Column(name = "Aanwervend")
    private String aanwervend;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "AanmaakDatum")
    @Temporal(TemporalType.DATE)
    private Date aanmaakDatum;
    
    @Basic(optional = false)
    @NotNull
    @Column(name = "LaatsteWijziging")
    @Temporal(TemporalType.DATE)
    private Date laatsteWijziging;
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "bedrijfID", fetch = FetchType.EAGER)
    private List<Stageplaats> stageplaatsList;

    @Size(max = 255)
    @Column(name = "Straat")
    private String straat;
    
    @Size(max = 255)
    @Column(name = "Nummer")
    private String nummer;
    
    @Size(max = 255)
    @Column(name = "Stad")
    private String stad;
    
    @Size(max = 255)
    @Column(name = "Postcode")
    private String postcode;
    
    @Size(max = 255)
    @Column(name = "Land")
    private String land;
    
    
    /**
     *  Constructor
     */    
    public Bedrijf() {
        this.id = null;
    }
    
    
    /*
        JPA: Columns Getters and Setters
    */

    /**
     * JPA Column Getter for the field ID
     * @return The field ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * JPA Column Setter for the field ID
     * @param id new value for the field ID
     */    
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * JPA Column Getter for the field naam
     * @return The string naam
     */    
    public String getNaam() {
        return naam;
    }

    /**
     * JPA Column Setter for the field naam
     * @param naam new string for the field naam
     */    
    public void setNaam(String naam) {
        this.naam = naam;
    }

    /**
     * JPA Column Getter for the field contactNaam.
     * @return The string contactNaam
     */    
    public String getContactNaam() {
        return contactNaam;
    }

    /**
     * JPA Column Setter for the field contactNaam
     * @param contactNaam new string for the field contactNaam
     */    
    public void setContactNaam(String contactNaam) {
        this.contactNaam = contactNaam;
    }

    /**
     * JPA Column Getter for the field contactEmail.
     * @return The string contactEmail
     */    
    public String getContactEmail() {
        return contactEmail;
    }

    /**
     * JPA Column Setter for the field contactEmail
     * @param contactEmail new string for the field contactEmail
     */    
    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }


    /**
     * JPA Column Getter for the field activiteiten.
     * @return The string activiteiten
     */    
    public String getActiviteiten() {
        return activiteiten;
    }

    /**
     * JPA Column Setter for the field activiteiten
     * @param activiteiten new string for the field activiteiten
     */    
    public void setActiviteiten(String activiteiten) {
        this.activiteiten = activiteiten;
    }

    /**
     * JPA Column Getter for the field aanwervend.
     * @return The string aanwervend
     */    
    public String getAanwervend() {
        return aanwervend;
    }

    /**
     * JPA Column Setter for the field aanwervend
     * @param aanwervend new string for the field aanwervend
     */    
    public void setAanwervend(String aanwervend) {
        this.aanwervend = aanwervend;
    }

    /**
     * JPA Column Getter for the field aanmaakDatum.
     * This is the date when this entity was created.
     * @return The Date aanmaakDatum.
     */    
    public Date getAanmaakDatum() {
        return aanmaakDatum;
    }

    /**
     * JPA Column Setter for the field aanmaakDatum
     * This is the date when this entity was created.
     * @param aanmaakDatum new Date for the field aanmaakDatum
     */    
    public void setAanmaakDatum(Date aanmaakDatum) {
        this.aanmaakDatum = aanmaakDatum;
    }

    /**
     * JPA Column Getter for the field laatsteWijziging.
     * This is the date when this entity was last changed.
     * @return The Date laatsteWijziging.
     */    
    public Date getLaatsteWijziging() {
        return laatsteWijziging;
    }

    /**
     * JPA Column Setter for the field laatsteWijziging
     * This is the date when this entity last modified.
     * @param laatsteWijziging new Date for the field laatsteWijziging
     */    
    public void setLaatsteWijziging(Date laatsteWijziging) {
        this.laatsteWijziging = laatsteWijziging;
    }

    /**
     * JPA Column Getter for the field straat.
     * @return The string straat
     */    
    public String getStraat() {
        return straat;
    }

    /**
     * JPA Column Setter for the field straat
     * @param straat new string for the field straat
     */    
    public void setStraat(String straat) {
        this.straat = straat;
    }
    
    /**
     * JPA Column Getter for the field nummer.
     * @return The string nummer
     */
    public String getNummer() {
        return nummer;
    }

    /**
     * JPA Column Setter for the field nummer
     * @param nummer new string for the field nummer
     */    
    public void setNummer(String nummer) {
        this.nummer = nummer;
    }

    /**
     * JPA Column Getter for the field stad.
     * @return The string stad
     */    
    public String getStad() {
        return stad;
    }

    /**
     * JPA Column Setter for the field stad
     * @param stad new string for the field stad
     */    
    public void setStad(String stad) {
        this.stad = stad;
    }

    /**
     * JPA Column Getter for the field postcode.
     * This is a string as only Belgian postal codes are completly numeric.
     * @return The string postcode
     */    
    public String getPostcode() {
        return postcode;
    }

    /**
     * JPA Column Setter for the field postcode
     * This is a string as only Belgian postal codes are completly numeric.
     * @param postcode new string for the field postcode
     */    
    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    /**
     * JPA Column Getter for the field land.
     * @return The string land
     */    
    public String getLand() {
        return land;
    }

    /**
     * JPA Column Setter for the field land
     * @param land new string for the field land
     */    
    public void setLand(String land) {
        this.land = land;
    }

    /**
     * JPA Column Getter for the field stageplaatsList.
     * These are all stageplaatsen from this Bedrijf.
     * @return The List stageplaatsList
     */
    @XmlTransient
    public List<Stageplaats> getStageplaatsList() {
        return stageplaatsList;
    }

    /**
     * JPA Column Setter for the field stageplaatsList
     * These are all stageplaatsen from this Bedrijf.
     * @param stageplaatsList new List stageplaatsList
     */    
    public void setStageplaatsList(List<Stageplaats> stageplaatsList) {
        this.stageplaatsList = stageplaatsList;
    }

    
    /*
        Supporting methodes
    */
    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Bedrijf)) {
            return false;
        }
        Bedrijf other = (Bedrijf) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "DAL.Bedrijf[ id=" + id + " ]";
    }
    
}
