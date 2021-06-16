package sjk.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import sjk.spring.mvc.vo.Gallery;

import java.util.List;

@Repository("gdao")
public class GalleryDAOImpl implements GalleryDAO {

    @Autowired
    private SqlSession sqlSession;

    @Override
    public int insertGallery(Gallery g) {
        sqlSession.insert("gallery.insertGallery", g);
        return sqlSession.selectOne("gallery.lastGalID");
        // 해당 글번호에 대한 값을 가져오기
    }

    @Override
    public List<Gallery> selectGallery(int snum) {
        return sqlSession.selectList("gallery.selectGallery", snum);
    }

    @Override
    public Gallery selectOneGallery(String gno) {
        return sqlSession.selectOne("gallery.selectOneGallery", gno);
    }

}
