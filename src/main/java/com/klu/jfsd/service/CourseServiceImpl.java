package com.klu.jfsd.service;

import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

@Service
public class CourseServiceImpl implements CourseService {
    
    @Override
    public ModelAndView redirectToCoursePage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("courses");
        return mv;
    }
}
