package beans;

public class Location {
	private int locationId;
	private String locationName;
	private String locationLng;
	private String locationLat;
	private String locationInclude;
	private String locationDetail;
	private String locationUniversity;
	private String locationCampus;
	private String userid;
	private String c;
	public int getLocationId() {
		return locationId;
	}
	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}
	public String getLocationName() {
		return locationName;
	}
	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}
	public String getLocationLng() {
		return locationLng;
	}
	public void setLocationLng(String locationLng) {
		this.locationLng = locationLng;
	}
	public String getLocationLat() {
		return locationLat;
	}
	public void setLocationLat(String locationLat) {
		this.locationLat = locationLat;
	}
	public String getLocationInclude() {
		return locationInclude;
	}
	public void setLocationInclude(String locationInclude) {
		this.locationInclude = locationInclude;
	}
	public String getLocationDetail() {
		return locationDetail;
	}
	public void setLocationDetail(String locationDetail) {
		this.locationDetail = locationDetail;
	}
	public String getLocationUniversity() {
		return locationUniversity;
	}
	public void setLocationUniversity(String locationUniversity) {
		this.locationUniversity = locationUniversity;
	}
	public String getLocationCampus() {
		return locationCampus;
	}
	public void setLocationCampus(String locationCampus) {
		this.locationCampus = locationCampus;
	}
	public String getuserid() {
		return userid;
	}
	public void setuserid(String userid) {
		this.userid = userid;
	}
	public String getc() {
		return c;
	}
	public void setc(String c) {
		this.c = c;
	}
	public Location(int locationId, String locationName, String locationLng, String locationLat, String locationInclude,
			String locationDetail, String locationUniversity, String locationCampus,String userid,String c) {
		super();
		this.locationId = locationId;
		this.locationName = locationName;
		this.locationLng = locationLng;
		this.locationLat = locationLat;
		this.locationInclude = locationInclude;
		this.locationDetail = locationDetail;
		this.locationUniversity = locationUniversity;
		this.locationCampus = locationCampus;
		this.userid=userid;
		this.c=c;
	}
	public Location() {
		
	}
}
