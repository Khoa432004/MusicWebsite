package org.springframework.boot.spring_boot_MusicApp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
    @GetMapping("/Home")
    public String home() {
        return "Home";
    }
}

