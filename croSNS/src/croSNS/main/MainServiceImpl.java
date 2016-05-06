package croSNS.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import croSNS.social.SessionObjects;
import facebook4j.Post;
import facebook4j.ResponseList;
import facebook4j.User;

@Service("mainService")
public class MainServiceImpl implements MainService{

	@Autowired
	private SessionObjects sessionObjects;
	
	public ModelAndView show() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		//16:40 update
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
				mav.setViewName("/main/main");
				
		return mav;
	}
}
