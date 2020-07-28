package VO;

public class RegVO {
	private Integer rid;
	private String fname;
	private String lname;
	private String mno;
	private String gender;
	private LoginVO loginvo;
	private CityVO cityVO;

	
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
	public LoginVO getLoginvo() {
		return loginvo;
	}
	public void setLoginvo(LoginVO loginvo) {
		this.loginvo = loginvo;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
}
	