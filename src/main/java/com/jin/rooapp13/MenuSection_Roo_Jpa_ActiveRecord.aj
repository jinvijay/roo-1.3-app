// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jin.rooapp13;

import com.jin.rooapp13.MenuSection;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MenuSection_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager MenuSection.entityManager;
    
    public static final List<String> MenuSection.fieldNames4OrderClauseFilter = java.util.Arrays.asList("");
    
    public static final EntityManager MenuSection.entityManager() {
        EntityManager em = new MenuSection().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long MenuSection.countMenuSections() {
        return entityManager().createQuery("SELECT COUNT(o) FROM MenuSection o", Long.class).getSingleResult();
    }
    
    public static List<MenuSection> MenuSection.findAllMenuSections() {
        return entityManager().createQuery("SELECT o FROM MenuSection o", MenuSection.class).getResultList();
    }
    
    public static List<MenuSection> MenuSection.findAllMenuSections(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MenuSection o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MenuSection.class).getResultList();
    }
    
    public static MenuSection MenuSection.findMenuSection(BigDecimal id) {
        if (id == null) return null;
        return entityManager().find(MenuSection.class, id);
    }
    
    public static List<MenuSection> MenuSection.findMenuSectionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM MenuSection o", MenuSection.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<MenuSection> MenuSection.findMenuSectionEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM MenuSection o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, MenuSection.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void MenuSection.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void MenuSection.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            MenuSection attached = MenuSection.findMenuSection(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void MenuSection.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void MenuSection.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public MenuSection MenuSection.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        MenuSection merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}