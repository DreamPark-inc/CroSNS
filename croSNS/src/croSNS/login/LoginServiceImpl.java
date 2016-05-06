package croSNS.login;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Resource(name="loginDAO")
	private LoginDAO loginDAO;

	@Override
	public int selectIdCk(LoginVO VO) throws Exception {
		return loginDAO.selectIdCk(VO);
	}
	
	@Override
	public String selectName(LoginVO VO) throws Exception {
		return loginDAO.selectName(VO);
	}
}
