package VO;

public class AreaVO {
	private int id;
	private String areaName;
	private String areaDiscription;
	private CityVO cityVO;
	private String deleteStatus;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaDiscription() {
		return areaDiscription;
	}
	public void setAreaDiscription(String areaDiscription) {
		this.areaDiscription = areaDiscription;
	}
	public CityVO getCityVO() {
		return cityVO;
	}
	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}
	public String getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	

}
