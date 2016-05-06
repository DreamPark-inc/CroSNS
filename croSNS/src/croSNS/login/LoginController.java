package croSNS.login;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginController {
    
	@Resource(name="loginService")
	private LoginService loginService;
	
	@RequestMapping(value="/login.do")
	public String main(LoginVO VO, ModelMap model,HttpSession session,HttpServletRequest request) throws Exception {
		if(session.getAttribute("userLoginInfo") != null){
			return "/main/main";
		}else{
			session.setAttribute("userLoginInfo", null);
			session.setAttribute("userId", null);
		}
		
		int loginCk = (Integer)loginService.selectIdCk(VO);
		System.out.println("loginCk : " + loginCk);

		if(loginCk == 1){
			model.addAttribute("loginCk", loginCk);
			String userName = loginService.selectName(VO);
			session.setAttribute("userLoginInfo", loginCk);
			session.setAttribute("userName", userName);
			System.out.println("«í«°«¤«óà÷Íí£¡");
			return "/main/main";
		}

		model.addAttribute("loginCk", loginCk);
		System.out.println("«í«°«¤«óã÷ø¨:(");

		return "/login/login";
	}

	@RequestMapping(value="/logOut.do")
	public ModelAndView logOut(LoginVO VO, ModelAndView mv,HttpSession session,HttpServletRequest request) throws Exception {

		session.setAttribute("userLoginInfo", null);
		session.setAttribute("userId", null);
		System.out.println("«í«°«¢«¦«Èª·ªÞª·ª¿¡£");
		
		mv.setViewName("/login/login");
		return mv;
	}
	
}
