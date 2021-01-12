package beans;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Location2 {
	private int locationId;
	private String locationName;
	private String locationLng;
	private String locationLat;
	private String locationInclude; 

	/*
	 * private String locationDetail; private String locationUniversity; private
	 * String locationCampus; private String locationUniversity11; private String
	 * locationCampus11;
	 */
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
	
	  public String getLocationInclude() { return locationInclude; } 
	  public void setLocationInclude(String locationInclude) { this.locationInclude =
	  locationInclude; }
	 

	/*
	 * public String getLocationDetail() { return locationDetail; } public void
	 * setLocationDetail(String locationDetail) { this.locationDetail =
	 * locationDetail; }
	 */
	/*
	 * public String getLocationUniversity() { return locationUniversity; } public
	 * void setLocationUniversity(String locationUniversity) {
	 * this.locationUniversity = locationUniversity; } public String
	 * getLocationCampus() { return locationCampus; } public void
	 * setLocationCampus(String locationCampus) { this.locationCampus =
	 * locationCampus; } public String getLocationUniversity11() { return
	 * locationUniversity11; } public void setLocationUniversity11(String
	 * locationUniversity11) { this.locationUniversity11 = locationUniversity11; }
	 * public String getLocationCampus11() { return locationCampus11; } public void
	 * setLocationCampus11(String locationCampus11) { this.locationCampus11 =
	 * locationCampus11; }
	 */
	public Location2(int locationId, String locationName, String locationLng,
			String locationLat, String locationInclude
			/*, String locationDetail, String locationUniversity,
								  String locationCampus, String locationUniversity11, String locationCampus11*/
								 ) {
		super();
		this.locationId = locationId;
		this.locationName = locationName;
		this.locationLng = locationLng;
		this.locationLat = locationLat;
 this.locationInclude = locationInclude; 
 /*this.locationDetail = locationDetail;
		 * this.locationUniversity = locationUniversity; this.locationCampus =
		 * locationCampus; this.locationUniversity11 = locationUniversity11;
		 * this.locationCampus11 = locationCampus11;
		 */
	}
	public Location2() {
		
	}
}
