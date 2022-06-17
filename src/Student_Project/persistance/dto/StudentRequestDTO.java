package Student_Project.persistance.dto;

import java.time.LocalDate;

public class StudentRequestDTO {
	private String sno;
	private String sname;
	private String sclass;
	private LocalDate date;
	private String status;
	public String getSno() {
		return sno;
	}
	public void setSno(String sno) {
		this.sno = sno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDate() {
		return date.toString();
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "StudentResponseDTO [student_id=" + sno + ", student_name=" + sname + ", class_name="
				+ sclass + ", date=" + date + ", status=" + status + "]";
	}
}
