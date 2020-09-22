package com.jin.rooapp13.web;
import com.jin.rooapp13.MenuSection;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/menusections")
@Controller
@RooWebScaffold(path = "menusections", formBackingObject = MenuSection.class)
public class MenuSectionController {
}
