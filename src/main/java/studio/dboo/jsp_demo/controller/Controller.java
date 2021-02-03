package studio.dboo.jsp_demo.controller;

import org.springframework.web.bind.annotation.*;

@org.springframework.stereotype.Controller
public class Controller {

    @RequestMapping(value = "/")
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/userInfo")
    public String userInfo() {
        return "index";
    }
}
