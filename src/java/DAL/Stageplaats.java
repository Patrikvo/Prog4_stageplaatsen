/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
 *
 * @author patrik
 */
@Entity
@Table(name = "stageplaats")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Stageplaats.findAll", query = "SELECT s FROM Stageplaats s")
    , @NamedQuery(name = "Stageplaats.findById", query = "SELECT s FROM Stageplaats s WHERE s.id = :id")
    , @NamedQuery(name = "Stageplaats.findByTitel", query = "SELECT s FROM Stageplaats s WHERE s.titel = :titel")
    , @NamedQuery(name = "Stageplaats.findByOmschrijving", query = "SELECT s FROM Stageplaats s WHERE s.omschrijving = :omschrijving")
    , @NamedQuery(name = "Stageplaats.findByAantalPlaatsen", query = "SELECT s FROM Stageplaats s WHERE s.aantalPlaatsen = :aantalPlaatsen")
    , @NamedQuery(name = "Stageplaats.findByPeriode", query = "SELECT s FROM Stageplaats s WHERE s.periode = :periode")
    , @NamedQuery(name = "Stageplaats.findByBegeleiding", query = "SELECT s FROM Stageplaats s WHERE s.begeleiding = :begeleiding")
    , @NamedQuery(name = "Stageplaats.findByExtraKennisVereist", query = "SELECT s FROM Stageplaats s WHERE s.extraKennisVereist = :extraKennisVereist")
    , @NamedQuery(name = "Stageplaats.findByVoorzieningen", query = "SELECT s FROM Stageplaats s WHERE s.voorzieningen = :voorzieningen")
    , @NamedQuery(name = "Stageplaats.findByAanmaakDatum", query = "SELECT s FROM Stageplaats s WHERE s.aanmaakDatum = :aanmaakDatum")
    , @NamedQuery(name = "Stageplaats.findByLaatsteWijziging", query = "SELECT s FROM Stageplaats s WHERE s.laatsteWijziging = :laatsteWijziging")})
public class Stageplaats implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "Titel")
    private String titel;
    @Size(max = 5000)
    @Column(name = "Omschrijving")
    private String omschrijving;
    @Column(name = "AantalPlaatsen")
    private Integer aantalPlaatsen;
    @Size(max = 255)
    @Column(name = "Periode")
    private String periode;
    @Size(max = 5000)
    @Column(name = "Begeleiding")
    private String begeleiding;
    @Size(max = 2000)
    @Column(name = "ExtraKennisVereist")
    private String extraKennisVereist;
    @Size(max = 5000)
    @Column(name = "Voorzieningen")
    private String voorzieningen;
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
    @JoinColumn(name = "SitueertID", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Situeert situeertID;
    @JoinColumn(name = "BedrijfID", referencedColumnName = "ID")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private Bedrijf bedrijfID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "stageplaats", fetch = FetchType.EAGER)
    private List<StudentStageplaats> studentStageplaatsList;

    public Stageplaats() {
    }

    public Stageplaats(Integer id) {
        this.id = id;
    }

    public Stageplaats(Integer id, String titel, Date aanmaakDatum, Date laatsteWijziging) {
        this.id = id;
        this.titel = titel;
        this.aanmaakDatum = aanmaakDatum;
        this.laatsteWijziging = laatsteWijziging;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitel() {
        return titel;
    }

    public void setTitel(String titel) {
        this.titel = titel;
    }

    public String getOmschrijving() {
        return omschrijving;
    }

    public void setOmschrijving(String omschrijving) {
        this.omschrijving = omschrijving;
    }

    public Integer getAantalPlaatsen() {
        return aantalPlaatsen;
    }

    public void setAantalPlaatsen(Integer aantalPlaatsen) {
        this.aantalPlaatsen = aantalPlaatsen;
    }

    public String getPeriode() {
        return periode;
    }

    public void setPeriode(String periode) {
        this.periode = periode;
    }

    public String getBegeleiding() {
        return begeleiding;
    }

    public void setBegeleiding(String begeleiding) {
        this.begeleiding = begeleiding;
    }

    public String getExtraKennisVereist() {
        return extraKennisVereist;
    }

    public void setExtraKennisVereist(String extraKennisVereist) {
        this.extraKennisVereist = extraKennisVereist;
    }

    public String getVoorzieningen() {
        return voorzieningen;
    }

    public void setVoorzieningen(String voorzieningen) {
        this.voorzieningen = voorzieningen;
    }

    public Date getAanmaakDatum() {
        return aanmaakDatum;
    }

    public void setAanmaakDatum(Date aanmaakDatum) {
        this.aanmaakDatum = aanmaakDatum;
    }

    public Date getLaatsteWijziging() {
        return laatsteWijziging;
    }

    public void setLaatsteWijziging(Date laatsteWijziging) {
        this.laatsteWijziging = laatsteWijziging;
    }

    public Situeert getSitueertID() {
        return situeertID;
    }

    public void setSitueertID(Situeert situeertID) {
        this.situeertID = situeertID;
    }

    public Bedrijf getBedrijfID() {
        return bedrijfID;
    }

    public void setBedrijfID(Bedrijf bedrijfID) {
        this.bedrijfID = bedrijfID;
    }

    @XmlTransient
    public List<StudentStageplaats> getStudentStageplaatsList() {
        return studentStageplaatsList;
    }

    public void setStudentStageplaatsList(List<StudentStageplaats> studentStageplaatsList) {
        this.studentStageplaatsList = studentStageplaatsList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Stageplaats)) {
            return false;
        }
        Stageplaats other = (Stageplaats) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "DAL.Stageplaats[ id=" + id + " ]";
    }
    
}