package com.app.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.WebSeriesModel;
import com.app.repo.WebSeriesRepo;

@Controller
public class WebSeriesController {

	@Autowired
	private WebSeriesRepo webSeriesRepo;
	
	
	@GetMapping({"/newseries","/"})
	public ModelAndView newseries() {
		ModelAndView mv=new ModelAndView("newseries");
		return mv;
	}
	
	@PostMapping("/addSeries")
	public ModelAndView addSeries( WebSeriesModel w) {
		
		ModelAndView mv=new ModelAndView("newseries");
		webSeriesRepo.save(w);
		mv.addObject("data", "successfully saved");
		return mv;
	}
	
	@GetMapping("/series")
	public ModelAndView getAll() {
		
		ModelAndView mv=new ModelAndView("getall");
		mv.addObject("data", webSeriesRepo.findAll());
		return mv;
	}
	
	@GetMapping("/getbyid")
	public ModelAndView getbyId() {
		ModelAndView mv=new ModelAndView("getbyid");
		return mv;
	}
	
	@GetMapping("/series/id/")
	public ModelAndView getById(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView("getbyid");
		WebSeriesModel lm=webSeriesRepo.findById(id).get();
		mv.addObject("data", lm);
		return mv;
	}
	
	@GetMapping("/series/name/")
	public ModelAndView getByName(@RequestParam("name") String name) {
		ModelAndView mv=new ModelAndView("getbyid");
		    WebSeriesModel lm= webSeriesRepo.findByName(name).get(0);
		mv.addObject("data", lm );
		return mv;
	}
	
	@RequestMapping("/delete/{id}")
	public ModelAndView deleteSeries(@PathVariable("id") int id) {
		ModelAndView mv=new ModelAndView("redirect:/series");
		webSeriesRepo.deleteById(id);

		mv.addObject("datafrom", "Series Removed ! ");
		return mv;
	}
	
	
	@GetMapping("/updateseries/{id}")
	public ModelAndView updateSeries(@PathVariable("id") int id) {
		ModelAndView mv=new ModelAndView("update");
		mv.addObject("data", id);
		return mv;
	}
	
	@RequestMapping("/update")
	public String updateWebSeries( WebSeriesModel w) {

	  Optional<WebSeriesModel> ws=	webSeriesRepo.findById(w.getId());
	  WebSeriesModel webSeriesModel=ws.get();
	  webSeriesModel.setEpisodes(w.getEpisodes());
	  webSeriesModel.setName(w.getName());
	  webSeriesModel.setRating(w.getRating());
	  webSeriesModel.setSeasons(w.getSeasons());
	  webSeriesRepo.save(webSeriesModel);
	  return "redirect:/series";
	}
}
