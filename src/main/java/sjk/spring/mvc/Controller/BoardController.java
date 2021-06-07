package sjk.spring.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

    @GetMapping("/board/list")
    public String agree() {
        return "board/list.tiles";
    }

    @GetMapping("/board/write")
    public String write() {
        return "board/write.tiles";
    }

    @GetMapping("/board/view")
    public String view() {
        return "board/view.tiles";
    }


}
