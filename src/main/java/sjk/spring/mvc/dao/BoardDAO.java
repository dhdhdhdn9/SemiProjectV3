package sjk.spring.mvc.dao;

import sjk.spring.mvc.vo.Board;

import java.util.List;
import java.util.Map;

public interface BoardDAO {

    int insertBoard(Board b);
    int updateBoard(Board b);
    int deleteBoard(String bdno);

    List<Board> selectBoard(int snum);
    List<Board> findSelectBoard(Map<String, Object> param);
    Board selectOneBoard(String bdno);

    int selectCountBoard();
    int selectCountBoard(Map<String, Object> param);
    // κ²μκΈ μ
    int viewCountBoard(String bdno);

}
