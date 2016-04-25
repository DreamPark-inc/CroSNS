package croSNS.contents;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContentsController {

	@RequestMapping(value="/contents.do")
	public String main(ModelMap model, HttpServletRequest request) throws Exception {
    	return "/contents/totalRelease";
    }
}
