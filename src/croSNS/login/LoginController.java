package croSNS.login;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {
    
	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value="/login.do")
	public String main(LoginVO VO, ModelMap model,HttpServletRequest request) throws Exception {
		
		int loginCk = loginService.selectIdCk(VO);
		
		
		model.addAttribute("loginCk", loginCk);
		
    	return "/login/login";
    }
}
