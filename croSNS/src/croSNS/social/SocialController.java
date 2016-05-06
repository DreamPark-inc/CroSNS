package croSNS.social;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;


import facebook4j.Facebook;
import facebook4j.FacebookException;
import facebook4j.FacebookFactory;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.RequestToken;

@Controller
public class SocialController
{
	private static Logger logger = Logger.getLogger(SocialController.class);

	@Autowired
	private HttpServletRequest request;
	@Autowired
	private HttpServletResponse response;
	@Autowired
	private SessionObjects sessionObjects;
	
	@Resource(name="socialService")
	private SocialService socialService;



	@RequestMapping(value="/signin.do", method=RequestMethod.GET)
	public RedirectView signin() throws IOException
	{   
		Facebook facebook = new FacebookFactory().getInstance();

		// Storing the facebook object for further use
		sessionObjects.setFacebook(facebook);


		// Building the correct URL to return to our application
		StringBuffer callbackURL = request.getRequestURL();
		callbackURL.replace(callbackURL.lastIndexOf("/"), callbackURL.length(), "").append("/callback");

		// URL to ask for the acceptance of permissions
		// It attaches the URL to return to your application
		String authAuthorizationURL = facebook.getOAuthAuthorizationURL(callbackURL.toString());

		return new RedirectView(authAuthorizationURL);
	}
	
	@RequestMapping(value="/callback", method=RequestMethod.GET)
	public RedirectView callback(String code) throws FacebookException, IOException
	{
		//sessionObjects.getFacebook().getOAuthAccessToken(code);	
		
		StringBuffer url = request.getRequestURL().replace(request.getRequestURL().lastIndexOf("/"), 
				request.getRequestURL().length(), "/main.do");
		return new RedirectView(url.toString());
	}
	
	
	
	
	@RequestMapping(value="/facebookLogOut.do", method=RequestMethod.GET)
	public RedirectView logout() throws IOException
	{
		//16:40 update
		if(sessionObjects.getFacebook()==null){return new RedirectView("/signin.do");}
		//16:40 update

		String accessToken = sessionObjects.getFacebook().getOAuthAccessToken().getToken();

		// Flush up the Facebook Session
		sessionObjects.setFacebook(null);

		// Log out of action
		StringBuffer next = request.getRequestURL().replace((request.getRequestURL().lastIndexOf("/") + 1), request.getRequestURL().length(), "");
		return new RedirectView("http://www.facebook.com/logout.php?next=" + next.toString() + "&access_token=" + accessToken);
	}
	
	/*@RequestMapping(value="/twitterSignin.do")
	public String twitterSignin() throws IOException, TwitterException
	{   System.out.println("���");
		Twitter twitter = new TwitterFactory().getInstance();
		
		//twitter�� �����Ѵ�.
		twitter.setOAuthConsumer("dOiXJqOldWOIPMjjDRcYLZnu1", "AGG6Oa9kFIVreXJpoouAFSMVOnUyySEdxaP9XeOJGUv8UNl8ML");//	Consumer Key, Consumer Secret
		System.out.println("Ű�� ��ũ���� �־� �ּ̱���");
		
		//������ requestToken�� �ش������� ������´�.
		RequestToken requestToken =  twitter.getOAuthRequestToken();

		//requestToken �� �ݵ�� ���ǿ� ����־�� �Ѵ�.
		request.getSession().setAttribute("requestToken", requestToken);
		requestToken.getAuthorizationURL();  //������ url���� �Ѿ�´�.
		System.out.println(requestToken.getAuthorizationURL());
		requestToken.getToken(); //token���� �����´�.
		System.out.println(requestToken.getToken());
		requestToken.getTokenSecret(); //token Secret���� �����´�.
		System.out.println(requestToken.getTokenSecret());
		
		return requestToken.getAuthorizationURL();
		
	}*/
}
