package dto;

public class Member {

    private int mem_code = 0;
    private String mem_id = null;
    private String mem_pw = null; 
    private String mem_name = null;
    private String mem_phone = null;
    private String mem_email = null;
    private int mem_access = 0;
    private String mem_date = null;
    private int mem_status = 0;
        
	public Member() {
		super();
	}
	
	public Member(int mem_code, String mem_id, String mem_pw, String mem_name, String mem_phone, String mem_email,
			int mem_access, String mem_date, int mem_status) {
		super();
		this.mem_code = mem_code;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_phone = mem_phone;
		this.mem_email = mem_email;
		this.mem_access = mem_access;
		this.mem_date = mem_date;
		this.mem_status = mem_status;
	}

	
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public int getMem_access() {
		return mem_access;
	}
	public void setMem_access(int mem_access) {
		this.mem_access = mem_access;
	}
	public String getMem_date() {
		return mem_date;
	}
	public void setMem_date(String mem_date) {
		this.mem_date = mem_date;
	}
	public int getMem_status() {
		return mem_status;
	}
	public void setMem_status(int mem_status) {
		this.mem_status = mem_status;
	}

	@Override
	public String toString() {
		return "MemberDTO [mem_code=" + mem_code + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name="
				+ mem_name + ", mem_phone=" + mem_phone + ", mem_email=" + mem_email + ", mem_access=" + mem_access
				+ ", mem_date=" + mem_date + ", mem_status=" + mem_status + "]";
	} 
    
}
