package croSNS.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{
    
	@Autowired
	private LoginDAO loginDao;
	
	public int selectIdCk(LoginVO VO) throws Exception {
		return loginDao.selectIdCk(VO);
	}
	
}
