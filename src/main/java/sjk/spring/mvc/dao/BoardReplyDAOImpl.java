package sjk.spring.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import sjk.spring.mvc.vo.Reply;

import java.util.List;

@Repository("brdao")
public class BoardReplyDAOImpl implements BoardReplyDAO{

    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<Reply> selectReply(String bdno) {
        return sqlSession.selectList("bdreply.selectReply", bdno);
    }

    @Override
    public int insertComment(Reply r) {
        r.setRpno(selectLastRno());
        // 부모댓글을 따라 목록을 써야하기 때문에
        // 댓글 저장시 최근 댓글번호를 알아내서 rpno에 저장함
        return sqlSession.insert("bdreply.insertComment",r);
    }

    @Override
    public int insertReply(Reply r) {
        return sqlSession.insert("bdreply.insertComment", r);
    }

    private String selectLastRno() {
        return sqlSession.selectOne("bdreply.selectLastRno");
    }

}
