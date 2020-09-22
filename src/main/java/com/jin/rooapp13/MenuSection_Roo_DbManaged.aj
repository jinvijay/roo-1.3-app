// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jin.rooapp13;

import com.jin.rooapp13.MenuSection;
import com.jin.rooapp13.MenuSectionFood;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect MenuSection_Roo_DbManaged {
    
    @OneToMany(mappedBy = "sectionId", cascade = { CascadeType.PERSIST, CascadeType.MERGE })
    private Set<MenuSectionFood> MenuSection.menuSectionFoods;
    
    @Column(name = "SECTION_NM", length = 100)
    private String MenuSection.sectionNm;
    
    public Set<MenuSectionFood> MenuSection.getMenuSectionFoods() {
        return menuSectionFoods;
    }
    
    public void MenuSection.setMenuSectionFoods(Set<MenuSectionFood> menuSectionFoods) {
        this.menuSectionFoods = menuSectionFoods;
    }
    
    public String MenuSection.getSectionNm() {
        return sectionNm;
    }
    
    public void MenuSection.setSectionNm(String sectionNm) {
        this.sectionNm = sectionNm;
    }
    
}