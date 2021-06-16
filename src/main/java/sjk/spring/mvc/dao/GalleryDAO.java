package sjk.spring.mvc.dao;

import org.springframework.web.multipart.MultipartFile;
import sjk.spring.mvc.vo.Gallery;

import java.util.List;

public interface GalleryDAO {

    int insertGallery(Gallery g);
    List<Gallery> selectGallery(int snum);
    Gallery selectOneGallery(String gno);

}
