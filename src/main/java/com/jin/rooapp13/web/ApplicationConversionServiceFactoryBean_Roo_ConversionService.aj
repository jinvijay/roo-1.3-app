// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.jin.rooapp13.web;

import com.jin.rooapp13.Food;
import com.jin.rooapp13.MenuSection;
import com.jin.rooapp13.MenuSectionFood;
import com.jin.rooapp13.web.ApplicationConversionServiceFactoryBean;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Food, String> ApplicationConversionServiceFactoryBean.getFoodToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jin.rooapp13.Food, java.lang.String>() {
            public String convert(Food food) {
                return new StringBuilder().append(food.getItemName()).append(' ').append(food.getPrice()).toString();
            }
        };
    }
    
    public Converter<BigDecimal, Food> ApplicationConversionServiceFactoryBean.getIdToFoodConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigDecimal, com.jin.rooapp13.Food>() {
            public com.jin.rooapp13.Food convert(java.math.BigDecimal id) {
                return Food.findFood(id);
            }
        };
    }
    
    public Converter<String, Food> ApplicationConversionServiceFactoryBean.getStringToFoodConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jin.rooapp13.Food>() {
            public com.jin.rooapp13.Food convert(String id) {
                return getObject().convert(getObject().convert(id, BigDecimal.class), Food.class);
            }
        };
    }
    
    public Converter<MenuSection, String> ApplicationConversionServiceFactoryBean.getMenuSectionToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jin.rooapp13.MenuSection, java.lang.String>() {
            public String convert(MenuSection menuSection) {
                return new StringBuilder().append(menuSection.getSectionNm()).toString();
            }
        };
    }
    
    public Converter<BigDecimal, MenuSection> ApplicationConversionServiceFactoryBean.getIdToMenuSectionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigDecimal, com.jin.rooapp13.MenuSection>() {
            public com.jin.rooapp13.MenuSection convert(java.math.BigDecimal id) {
                return MenuSection.findMenuSection(id);
            }
        };
    }
    
    public Converter<String, MenuSection> ApplicationConversionServiceFactoryBean.getStringToMenuSectionConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jin.rooapp13.MenuSection>() {
            public com.jin.rooapp13.MenuSection convert(String id) {
                return getObject().convert(getObject().convert(id, BigDecimal.class), MenuSection.class);
            }
        };
    }
    
    public Converter<MenuSectionFood, String> ApplicationConversionServiceFactoryBean.getMenuSectionFoodToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.jin.rooapp13.MenuSectionFood, java.lang.String>() {
            public String convert(MenuSectionFood menuSectionFood) {
                return "(no displayable fields)";
            }
        };
    }
    
    public Converter<BigDecimal, MenuSectionFood> ApplicationConversionServiceFactoryBean.getIdToMenuSectionFoodConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigDecimal, com.jin.rooapp13.MenuSectionFood>() {
            public com.jin.rooapp13.MenuSectionFood convert(java.math.BigDecimal id) {
                return MenuSectionFood.findMenuSectionFood(id);
            }
        };
    }
    
    public Converter<String, MenuSectionFood> ApplicationConversionServiceFactoryBean.getStringToMenuSectionFoodConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.jin.rooapp13.MenuSectionFood>() {
            public com.jin.rooapp13.MenuSectionFood convert(String id) {
                return getObject().convert(getObject().convert(id, BigDecimal.class), MenuSectionFood.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getFoodToStringConverter());
        registry.addConverter(getIdToFoodConverter());
        registry.addConverter(getStringToFoodConverter());
        registry.addConverter(getMenuSectionToStringConverter());
        registry.addConverter(getIdToMenuSectionConverter());
        registry.addConverter(getStringToMenuSectionConverter());
        registry.addConverter(getMenuSectionFoodToStringConverter());
        registry.addConverter(getIdToMenuSectionFoodConverter());
        registry.addConverter(getStringToMenuSectionFoodConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}