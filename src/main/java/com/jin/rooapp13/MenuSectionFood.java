package com.jin.rooapp13;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(table = "MENU_SECTION_FOOD", schema = "FOODIE")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "foodId", "sectionId" })
public class MenuSectionFood {
}
