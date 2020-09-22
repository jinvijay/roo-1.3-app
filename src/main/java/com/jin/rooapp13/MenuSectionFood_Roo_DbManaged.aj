// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jin.rooapp13;

import com.jin.rooapp13.Food;
import com.jin.rooapp13.MenuSection;
import com.jin.rooapp13.MenuSectionFood;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

privileged aspect MenuSectionFood_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "FOOD_ID", referencedColumnName = "ID")
    private Food MenuSectionFood.foodId;
    
    @ManyToOne
    @JoinColumn(name = "SECTION_ID", referencedColumnName = "ID")
    private MenuSection MenuSectionFood.sectionId;
    
    public Food MenuSectionFood.getFoodId() {
        return foodId;
    }
    
    public void MenuSectionFood.setFoodId(Food foodId) {
        this.foodId = foodId;
    }
    
    public MenuSection MenuSectionFood.getSectionId() {
        return sectionId;
    }
    
    public void MenuSectionFood.setSectionId(MenuSection sectionId) {
        this.sectionId = sectionId;
    }
    
}
