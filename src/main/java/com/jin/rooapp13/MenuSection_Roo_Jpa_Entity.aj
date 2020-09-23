// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jin.rooapp13;

import com.jin.rooapp13.MenuSection;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect MenuSection_Roo_Jpa_Entity {
    
    declare @type: MenuSection: @Entity;
    
    declare @type: MenuSection: @Table(schema = "FOODIE", name = "MENU_SECTION");
    
    @Id
    @SequenceGenerator(name = "menuSectionGen", sequenceName = "MENU_SECTION_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "menuSectionGen")
    @Column(name = "ID")
    private BigDecimal MenuSection.id;
    
    @Version
    @Column(name = "version")
    private Integer MenuSection.version;
    
    public BigDecimal MenuSection.getId() {
        return this.id;
    }
    
    public void MenuSection.setId(BigDecimal id) {
        this.id = id;
    }
    
    public Integer MenuSection.getVersion() {
        return this.version;
    }
    
    public void MenuSection.setVersion(Integer version) {
        this.version = version;
    }
    
}
