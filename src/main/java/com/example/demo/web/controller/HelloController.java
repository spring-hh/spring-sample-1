// package
package com.example.demo.web.controller;
// import annotation for controller
import org.springframework.stereotype.Controller;
// import annotation for request mapping
import org.springframework.web.bind.annotation.RequestMapping;

// Controller for the Hello World page
@Controller
public class HelloController {
    @RequestMapping("/")
    public String index() {
        return "index";
    }
}
