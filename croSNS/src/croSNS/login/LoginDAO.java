package croSNS.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("loginDAO")
public class LoginDAO  {

	@Autowired
	private SqlSession sqlSession;
	
	@SuppressWarnings("unchecked")
	public int selectIdCk(LoginVO VO) throws Exception {
		return sqlSession.selectOne("LoginDAO.selectIdCk",VO);
	
	}
	
	@SuppressWarnings("unchecked")
	public String selectName(LoginVO VO) throws Exception {
		return sqlSession.selectOne("LoginDAO.selectName", VO);
	}
}
