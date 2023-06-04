package com.assignment.fruityloops.controller;

import com.assignment.fruityloops.item.Item;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
public class ItemController {
    @RequestMapping("/")
    public String indexx(Model model){
        ArrayList<Item> fruits = new ArrayList<>();
        fruits.add(new Item("Kiwi",1.25));
        fruits.add(new Item("Mango",2.0));
        fruits.add(new Item("Goji Berries",4.0));
        fruits.add(new Item("Guava",0.75));

        model.addAttribute("fruitItem",fruits);

        return "index";
    }
}

