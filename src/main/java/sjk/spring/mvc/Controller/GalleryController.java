package sjk.spring.mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GalleryController {

    @GetMapping("/gallery/list")
    public String agree() {
        return "gallery/list.tiles";
    }

    @GetMapping("/gallery/write")
    public String write() {
        return "gallery/write.tiles";
    }

    @GetMapping("/gallery/view")
    public String view() {
        return "gallery/view.tiles";
    }


}
