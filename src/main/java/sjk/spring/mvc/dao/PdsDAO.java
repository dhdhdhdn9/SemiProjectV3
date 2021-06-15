package sjk.spring.mvc.dao;

import sjk.spring.mvc.vo.Pds;

import java.util.List;
import java.util.Map;

public interface PdsDAO {

    int insertPds(Pds p);
    List<Pds> selectPds(int snum);
    int selectCountPds();
    Pds selectOnePds(String pno);
    Pds selectOneFname(Map<String, String> param);
    int downCountPds(Map<String, String> param);
    int viewCountPds(String pno);
    void updateRecmd(String pno);

    String selectPrvPno(String pno);
    String selectNxtPno(String pno);

    void  deletePds(String pno);
}
