package VO;

public class ComplaintVO {
	private int complaintid;
	private String discription;
	private String date;
	private String time;
	private LoginVO complaintfrom;
	private LoginVO complaintTo;
	private AreaVO areaVO;
	private CityVO cityVO;
	private String filename;
	private String filepath;
	private String reply;
	private String complaintStatus;
	private CompanyVO company;
	private String deletestatus;
	
	
	
	
	public String getDeletestatus() {
		return deletestatus;
	}
	public void setDeletestatus(String deletestatus) {
		this.deletestatus = deletestatus;
	}
	public CompanyVO getCompany() {
		return company;
	}
	public void setCompany(CompanyVO company) {
		this.company = company;
	}
	public String getComplaintStatus() {
		return complaintStatus;
	}
	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public LoginVO getComplaintTo() {
		return complaintTo;
	}
	public void setComplaintTo(LoginVO complaintTo) {
		this.complaintTo = complaintTo;
	}
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
	public int getComplaintid() {
		return complaintid;
	}
	public void setComplaintid(int complaintid) {
		this.complaintid = complaintid;
	}
	public String getDiscription() {
		return discription;
	}
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public LoginVO getComplaintfrom() {
		return complaintfrom;
	}
	public void setComplaintfrom(LoginVO complaintfrom) {
		this.complaintfrom = complaintfrom;
	}
	public AreaVO getAreaVO() {
		return areaVO;
	}
	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	


}
