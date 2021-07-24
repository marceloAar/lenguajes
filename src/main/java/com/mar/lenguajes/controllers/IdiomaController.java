package com.mar.lenguajes.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mar.lenguajes.models.Idioma;
import com.mar.lenguajes.services.IdiomaService;

@Controller
public class IdiomaController {
	
	private final IdiomaService idiomaService;
    
    public IdiomaController(IdiomaService idiomaService) {
        this.idiomaService = idiomaService;
    } 
        
    //mostrar
    @RequestMapping("/languages")
	public String inicio(@ModelAttribute("idioma") Idioma idioma, Model model) {
		List<Idioma> idiomas = idiomaService.allIdiomas();
		model.addAttribute("idiomas", idiomas);
	return "/index.jsp";
	}
   	
    //crear nuevo       
    @RequestMapping(value="/languages", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("idioma") Idioma idioma, BindingResult result) {
        if (result.hasErrors()) {
            return "/index.jsp";
        } else {
            idiomaService.createIdioma(idioma);
            return "redirect:/languages";
        }
    }
    
    //mostrar por id
    @RequestMapping("languages/{id}")
	public String mostrar(@PathVariable("id") Long id, Model model) {
	     Idioma idioma = idiomaService.findIdioma(id);
	     model.addAttribute("idioma", idioma);
	return "/show.jsp";
	}    
    
    //editar
    @RequestMapping("/languages/edit/{id}")
    public String edit(@PathVariable("id") Long id, Model model) {
        Idioma idioma = idiomaService.findIdioma(id);
        model.addAttribute("idioma", idioma);
        return "/edit.jsp";
    }
    
    @RequestMapping(value="/languages/edit/{id}", method=RequestMethod.PUT)
    public String update(@Valid @ModelAttribute("idioma") Idioma idioma, BindingResult result) {
        if (result.hasErrors()) {
            return "/edit.jsp";
        } else {
            idiomaService.createIdioma(idioma);
            return "redirect:/languages";
        }
    }
    
    //eliminar 
    @RequestMapping("/languages/delete/{id}")
    public String borra(@PathVariable("id") Long id, Model model) {
        Idioma idioma = idiomaService.findIdioma(id);
        model.addAttribute("idioma", idioma);
        idiomaService.deleteIdioma(id);
    return "redirect:/languages";
    }      
    
}
