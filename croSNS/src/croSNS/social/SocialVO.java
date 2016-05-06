package croSNS.social;

import org.springframework.web.multipart.MultipartFile;

public class SocialVO {

	private String message;
	
	private String url;
	
	private String photo;
	
	private String video;
	
	private MultipartFile uploadfile;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getVideo() {
		return video;
	}

	public void setVideo(String video) {
		this.video = video;
	}

	public MultipartFile getUploadfile() {
		return uploadfile;
	}
	
	public void setUploadfile(MultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	
}
