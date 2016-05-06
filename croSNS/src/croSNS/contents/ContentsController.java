package croSNS.contents;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;


import facebook4j.FacebookException;

@Controller
public class ContentsController {
	
	@Resource(name="contentsService")
	private ContentsService contentsService;
	
	
	@RequestMapping(value="/contents.do")
	public ModelAndView contents(ModelAndView mv, HttpSession session, HttpServletRequest request) throws Exception {

		//«»«Ã«·«ç«óªÎñéãóª¬ªÊª¤íÞùê
		if(session.getAttribute("userLoginInfo") == null){
			mv.setViewName("/login/login");
			return mv;
		}
		mv.setViewName("/contents/totalRelease");
		return mv;
    }
	
	@RequestMapping(value="/post.do", method=RequestMethod.POST)
	public ModelAndView post(HttpServletRequest request) throws IOException, FacebookException, Exception
	{
		// Post Commit service
		String status = contentsService.post(request);
		
		ModelAndView modelAndView = new ModelAndView();
		RedirectView rv = new RedirectView();
		rv.setUrl("/main.do");
		rv.setExposePathVariables(false);
		modelAndView.setView(rv);
		modelAndView.addObject("status", status);

		return modelAndView;
	}
}
