package com.yojulab.study_springboot.controller;

import com.yojulab.study_springboot.service.CarInforsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/carcompany")
public class CarCompanyController {
    @Autowired
    CarInforsService carInforsService;
    @GetMapping("/list")
    public ModelAndView test(ModelAndView modelAndView) {
        modelAndView.setViewName("/WEB-INF/views/carcompany/list.jsp");
        return modelAndView;
    }
}
    //    @GetMapping("/selectSearch")
//    public ModelAndView selectSearch(@RequestParam Map params
//            , ModelAndView modelAndView) {
//        Object result = carInforsService.selectSearch(params);
//        modelAndView.addObject("params", params);
//        modelAndView.addObject("result", result);
//
//        modelAndView.setViewName("/WEB-INF/views/carinfor/list.jsp");
//        return modelAndView;
//    }

