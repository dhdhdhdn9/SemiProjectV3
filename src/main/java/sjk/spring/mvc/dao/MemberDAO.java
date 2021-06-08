package sjk.spring.mvc.dao;

import sjk.spring.mvc.vo.Member;
import sjk.spring.mvc.vo.Zipcode;

import java.util.List;

public interface MemberDAO {

//    memverService 인터페이스 참고
//    String newMember(Member m);
//    String findZipcode(String dong);
//    String checkUserid(String uid);
//    boolean checkLogin(Member m, HttpSession sess);

    int insertMember(Member m);
    List<Zipcode> selectZipcode(String dong);
    int selectOneUserid(String uid);
    int selectLogin(Member m);

}
