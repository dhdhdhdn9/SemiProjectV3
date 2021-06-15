package sjk.spring.mvc.service;

import org.springframework.web.multipart.MultipartFile;
import sjk.spring.mvc.vo.Pds;

import java.util.List;

public interface PdsService {

    boolean newPds(Pds p, MultipartFile[] file);
    List<Pds> readPds(String cp);
    int countPds();
    Pds readOnePds(String pno);
    Pds readOneFname(String pno, String order);

    boolean downCountPds(String pno, String order);
    boolean viewCountPds(String pno);

    void modifyRecmd(String pno);

    String readPrvPno(String pno);
    String readNxtPno(String pno);

    Pds removePds(String pno);
}
