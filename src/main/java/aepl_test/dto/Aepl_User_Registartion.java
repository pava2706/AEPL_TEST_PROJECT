package aepl_test.dto;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class Aepl_User_Registartion {
	@Id
	private String Email;
	private String Name;
	private long Mobile_Number;
	private String Date_of_Birth;
	private String Location;
	@Lob
	private byte[] Identification_Document;

	private LocalDate submissionDate;

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	} 		

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		this.Name = name;
	}

	public long getMobile_Number() {
		return Mobile_Number;
	}

	public void setMobile_Number(long mobile_Number) {
		Mobile_Number = mobile_Number;
	}

	public String getDate_of_Birth() {
		return Date_of_Birth;
	}

	public void setDate_of_Birth(String date_of_Birth) {
		Date_of_Birth = date_of_Birth;
	}

	public String getLocation() {
		return Location;
	}

	public void setLocation(String location) {
		Location = location;
	}

	public byte[] getIdentification_Document() {
		return Identification_Document;
	}

	public void setIdentification_Document(byte[] identification_Document) {
		Identification_Document = identification_Document;
	}

	public LocalDate getSubmissionDate() {
		return submissionDate;
	}

	public void setSubmissionDate(LocalDate localDate) {
		this.submissionDate = localDate;
	}

}
