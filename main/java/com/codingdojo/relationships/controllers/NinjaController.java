package com.codingdojo.relationships.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.relationships.models.Dojo;
import com.codingdojo.relationships.models.Ninja;
import com.codingdojo.relationships.services.DojoService;

@Controller
public class NinjaController {
	@Autowired 
private DojoService dService;
	
	@RequestMapping("/ninjas/new")
	public String addNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> allDojos = dService.allDojos();
		model.addAttribute("allDojos", allDojos);
		return "newNinja.jsp";
	}
	@PostMapping("/ninjas/create")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
	if(result.hasErrors()) {	
		List<Dojo> allDojos = dService.allDojos();
		model.addAttribute("allDojos", allDojos);
		return "newNinja.jsp";
	}
	else {
		dService.createNinja(ninja);
		return "redirect:/dojos/" + ninja.getDojo().getId();
		
	}
	}
}