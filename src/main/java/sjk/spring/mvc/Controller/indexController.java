package sjk.spring.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class indexController {

    @GetMapping("/")
    public String index() {
        return "index.tiles";
    }

    @GetMapping("/pds")
    public String pds() {
        return "pds.tiles";
    }
}
