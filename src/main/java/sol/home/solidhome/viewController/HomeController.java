package sol.home.solidhome.viewController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @RequestMapping("/")
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("index");

        return modelAndView;
    }

    @RequestMapping(value = "html")
    public String html(HttpSession session, HttpServletRequest req) {
//        session.invalidate();
//
        return "html/index";
    }

    @RequestMapping("/html/{path}")
    public String html(@PathVariable("path") String path){

        return String.format("html/%s", path);
    }

}
