package sjk.spring.mvc.service;

import sjk.spring.mvc.vo.Board;

import java.util.List;

public interface BoardService {

    boolean newBoard(Board b);
    boolean modifyBoard(Board b);
    boolean removeBoard(String bdno);

    List<Board> readBoard(String cp);
    List<Board> readBoard(String cp, String ftype, String fkey);
    Board readOneBoard(String bdno);

    int countBoard();
    int countBoard(String ftype, String fkey);
    // 게시글 수
    boolean viewCountBoard(String bdno);




}
