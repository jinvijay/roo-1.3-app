package com.jin.rooapp13.web;
import com.jin.rooapp13.MenuSectionFood;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/menusectionfoods")
@Controller
@RooWebScaffold(path = "menusectionfoods", formBackingObject = MenuSectionFood.class)
public class MenuSectionFoodController {
}
