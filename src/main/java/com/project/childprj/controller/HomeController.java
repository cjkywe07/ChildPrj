package com.project.childprj.controller;

import com.project.childprj.repository.PostRepository;
import com.project.childprj.service.*;
import com.project.childprj.util.U;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private KindergardenService kindergardenService;

    @Autowired
    private ChildHouseService childHouseService;

    @Autowired
    private ChildCenterService childCenterService;

    @Autowired
    private PostService postService;

    @Autowired
    private ProductService productService;

    @GetMapping("/home")
    public String home(Model model) {
        int startIndex = 1;
        int endIndex = 200;

        kindergardenService.saveKindergarden(startIndex, endIndex);
        childHouseService.saveChildHouse(startIndex, endIndex);
        U.getSession().setAttribute("childCenter", childCenterService.getChildCenter(startIndex, endIndex));

        // graph
        model.addAttribute("productHotFive", productService.selectFive());
        model.addAttribute("postHotFive", postService.selectFive());

        return "home";
    }

    // 현재 Authentication 보기
    @RequestMapping("/auth")
    @ResponseBody
    public Authentication auth(){
        return SecurityContextHolder.getContext().getAuthentication();
    }

    @GetMapping("/")
    public String home_() {
        return "redirect:/home";
    }

}
