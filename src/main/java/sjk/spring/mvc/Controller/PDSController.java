package sjk.spring.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PDSController {

    @GetMapping("/pds/list")
    public String agree() {
        return "pds/list.tiles";
    }

    @GetMapping("/pds/write")
    public String write() {
        return "pds/write.tiles";
    }

    @GetMapping("/pds/view")
    public String view() {
        return "pds/view.tiles";
    }


}
