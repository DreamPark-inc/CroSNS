package croSNS.login;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class LoginDAO extends SqlMapClientDaoSupport {

	@Autowired
	public LoginDAO(SqlMapClient sqlMapClient)	{
		setSqlMapClient(sqlMapClient);
	}
	
	@SuppressWarnings("unchecked")
	public int selectIdCk(LoginVO VO) throws SQLException {
		
		Integer login=(Integer)getSqlMapClientTemplate().queryForObject("LoginDAO.selectIdCk", VO);
		
		System.out.println("Login : " + login);

		return login;
	}
}
