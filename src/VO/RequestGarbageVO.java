package VO;

public class RequestGarbageVO {
	
	private int rgid;
	private String discription;
	private String subject;
	private String date1;
	private String date2;
	private LoginVO requestFrom;
	private AreaVO areaVO;
	private CityVO cityVO;
	private SubCatagoryVO subcatagoryVO;
	private CatagoryVO catagoryVO;
	private String reqdate;
	private String reqtime;
	private String replyFromCompany;
	private String requestStatus;
	private CompanyVO requestTo;
	private String deletestatus;
	
	public String getDeletestatus() {
		return deletestatus;
	}
	public void setDeletestatus(String deletestatus) {
		this.deletestatus = deletestatus;
	}
	public int getRgid() {
		return rgid;
	}
	public void setRgid(int rgid) {
		this.rgid = rgid;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public LoginVO getRequestFrom() {
		return requestFrom;
	}
	public void setRequestFrom(LoginVO requestFrom) {
		this.requestFrom = requestFrom;
	}
	public AreaVO getAreaVO() {
		return areaVO;
	}
	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
	public SubCatagoryVO getSubcatagoryVO() {
		return subcatagoryVO;
	}
	public void setSubcatagoryVO(SubCatagoryVO subcatagoryVO) {
		this.subcatagoryVO = subcatagoryVO;
	}
	public CatagoryVO getCatagoryVO() {
		return catagoryVO;
	}
	public void setCatagoryVO(CatagoryVO catagoryVO) {
		this.catagoryVO = catagoryVO;
	}
	public String getReqdate() {
		return reqdate;
	}
	public void setReqdate(String reqdate) {
		this.reqdate = reqdate;
	}
	public String getReqtime() {
		return reqtime;
	}
	public void setReqtime(String reqtime) {
		this.reqtime = reqtime;
	}
	public String getReplyFromCompany() {
		return replyFromCompany;
	}
	public void setReplyFromCompany(String replyFromCompany) {
		this.replyFromCompany = replyFromCompany;
	}
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}
	public CompanyVO getRequestTo() {
		return requestTo;
	}
	public void setRequestTo(CompanyVO requestTo) {
		this.requestTo = requestTo;
	}
	
	
}


