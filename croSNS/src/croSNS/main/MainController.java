package croSNS.main;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import croSNS.login.LoginService;
import croSNS.social.SessionObjects;
import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.Post;
import facebook4j.ResponseList;
import facebook4j.User;

@Controller
public class MainController {
	
	@Autowired
	private SessionObjects sessionObjects;
	
	@Resource(name="mainService")
	private MainService mainService;
	
	@RequestMapping(value="/main.do")
	public ModelAndView main(ModelAndView mv, HttpSession session, HttpServletRequest request) throws Exception {
    	
		//«»«Ã«·«ç«óªÎñéãóª¬ªÊª¤íÞùê
		if(session.getAttribute("userLoginInfo") == null){
			mv.setViewName("/login/login");
			return mv;
		}
		mv.setViewName("/main/main");
		return mv;
		
    }
	
	@RequestMapping(value="/show.do", method=RequestMethod.GET)
	public ModelAndView show(HttpSession session,HttpServletRequest request) throws FacebookException, Exception
	{
		ModelAndView mav = new ModelAndView();


		//«»«Ã«·«ç«óªÎñéãóª¬ªÊª¤íÞùê
		if(session.getAttribute("userLoginInfo") == null){
			mav.setViewName("/login/login");
			return mav;
		}

		mav = mainService.show();
		/*//16:40 update
		RedirectView rv = new RedirectView();
		rv.setUrl("/main.do");
		mav.setView(rv);
		if(sessionObjects.getFacebook()==null){return mav; }
		//16:40 update
		String id = sessionObjects.getFacebook().getId();
		User user = sessionObjects.getFacebook().getUser(id);
		ResponseList<Post> feed =  sessionObjects.getFacebook().getFeed();
		ResponseList<Post> post =  sessionObjects.getFacebook().getPosts();
	       
		mav.addObject("post", post);

		mav.addObject("user", user);
		mav.addObject("feed", feed);
		mav.setViewName("/main/main");*/

		return mav;
	}
	
	@RequestMapping(value="/comments.do", method=RequestMethod.POST)
	public ModelAndView comment(HttpServletRequest request) throws IOException, FacebookException, Exception
	{
		System.out.println("¾ÆÀÌµð : " + request.getParameter("id") + ", ÄÚ¸àÆ® : " + request.getParameter("comments"));
		// Post Commit service
		
		String cm = sessionObjects.getFacebook().commentPost(request.getParameter("id"), request.getParameter("comments"));
		System.out.println("¿©±â°¡Áö ¿À³Ä");
		
		ModelAndView modelAndView = new ModelAndView();
		RedirectView rv = new RedirectView();
		rv.setUrl("/show.do");
		rv.setExposePathVariables(false);
		modelAndView.setView(rv);
		modelAndView.addObject("cm", cm);

		return modelAndView;
	}

}
