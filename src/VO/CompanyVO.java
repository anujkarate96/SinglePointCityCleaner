package VO;

public class CompanyVO {
	private int id;
	private String companyname;
	private String companydiscription;
	private CityVO cityVO;
	private String deleteStatus;
	private LoginVO loginVO;
	
	
	
	
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanydiscription() {
		return companydiscription;
	}
	public void setCompanydiscription(String companydiscription) {
		this.companydiscription = companydiscription;
	}
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}

}
