package VO;

public class SubCatagoryVO {
	private Integer id;
	private String subcatagoryName;
	private String subcatagoryDiscription;
	private CatagoryVO catagoryVO;
	private String deleteStatus;
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSubcatagoryName() {
		return subcatagoryName;
	}
	public void setSubcatagoryName(String subcatagoryName) {
		this.subcatagoryName = subcatagoryName;
	}
	public String getSubcatagoryDiscription() {
		return subcatagoryDiscription;
	}
	public void setSubcatagoryDiscription(String subcatagoryDiscription) {
		this.subcatagoryDiscription = subcatagoryDiscription;
	}
	public CatagoryVO getCatagoryVO() {
		return catagoryVO;
	}
	public void setCatagoryVO(CatagoryVO catagoryVO) {
		this.catagoryVO = catagoryVO;
	}

}
