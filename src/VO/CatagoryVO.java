package VO;

public class CatagoryVO {
	private Integer caid;
	private String catagoryName;
	private String catagoryDiscription;
	private String deleteStatus;
	

	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public Integer getCaid() {
		return caid;
	}
	public void setCaid(Integer caid) {
		this.caid = caid;
	}
	public String getCatagoryName() {
		return catagoryName;
	}
	public void setCatagoryName(String catagoryName) {
		this.catagoryName = catagoryName;
	}
	public String getCatagoryDiscription() {
		return catagoryDiscription;
	}
	public void setCatagoryDiscription(String catagoryDiscription) {
		this.catagoryDiscription = catagoryDiscription;
	}

}
	
