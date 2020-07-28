package VO;

public class FeedbackVO {
	private int fid;
	private String sub;
	private String des;
	private String feedbackDate;
	private String feedbackTime;
	private LoginVO loginVO;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getSub() {
		return sub;
	}
	public void setSub(String sub) {
		this.sub = sub;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getFeedbackDate() {
		return feedbackDate;
	}
	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}
	public String getFeedbackTime() {
		return feedbackTime;
	}
	public void setFeedbackTime(String feedbackTime) {
		this.feedbackTime = feedbackTime;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	
}
