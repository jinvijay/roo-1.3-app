package com.jin.rooapp13;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaActiveRecord(table = "MENU_SECTION", schema = "FOODIE", sequenceName = "MENU_SECTION_SEQ")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "menuSectionFoods" })
public class MenuSection {
}
