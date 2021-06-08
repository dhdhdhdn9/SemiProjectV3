package sjk.spring.mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sjk.spring.mvc.service.MemberService;
import sjk.spring.mvc.vo.Member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class JoinController {

    @Autowired private MemberService msrv;

    @GetMapping("/join/agree")
    public String agree() {
        return "join/agree.tiles";
    }

    @GetMapping("/join/checkme")
    public String checkme() {
        return "join/checkme.tiles";
    }

    @PostMapping("/join/joinme")
    public String joinme() {
        return "join/joinme.tiles";
    }

    @PostMapping("/join/joinok")
    public String joinok(Member m, HttpServletRequest req) {
        msrv.newMember(m);
        return "join/joinok.tiles";
    }

    // 우편번호 검색
    // /join/zipcode?dong=동이름
    // 검색 결과를 뷰페이지 없이 바로 응답으로 출력: RESTFUL 방식 (마이크로 서비스)
    // 서블릿에서 제공하는 HttpServletResponse를 이용하면
    // 스프링의 뷰리졸버 없이 바로 응답 출력 가능
    // 결과: 자바스크립트의 ajax를 이용해 적정히 가공한 후 폼에 출력
    @ResponseBody
    @GetMapping ("/join/zipcode")
    public void zipcode(String dong, HttpServletResponse res) {
        try {
            // 응답 결과의 유형은 JSON 형식으로 설정
            res.setContentType("application/json; charset=UTF-8");
            // 응답 결과를 뷰 없이 브라우저로 바로 출력
            res.getWriter().print( msrv.findZipcode(dong) );
        } catch (IOException e) {
            e.printStackTrace();
        }

    }


}
