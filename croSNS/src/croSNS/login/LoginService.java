package croSNS.login;

public interface LoginService {

	public int selectIdCk(LoginVO VO) throws Exception;
	public String selectName(LoginVO VO) throws Exception;
}
