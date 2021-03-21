package dto;

public class Order {

	 private int ord_code = 0;
	 private int mem_code = 0;
	 private int cls_code = 0;
	 private String ord_date = null; 
	 private int ord_total = 0;
	 private int ord_cancel = 0;
	 
	 
	public int getOrd_code() {
		return ord_code;
	}
	public void setOrd_code(int ord_code) {
		this.ord_code = ord_code;
	}
	public int getMem_code() {
		return mem_code;
	}
	public void setMem_code(int mem_code) {
		this.mem_code = mem_code;
	}
	public int getCls_code() {
		return cls_code;
	}
	public void setCls_code(int cls_code) {
		this.cls_code = cls_code;
	}
	public String getOrd_date() {
		return ord_date;
	}
	public void setOrd_date(String ord_date) {
		this.ord_date = ord_date;
	}
	public int getOrd_total() {
		return ord_total;
	}
	public void setOrd_total(int ord_total) {
		this.ord_total = ord_total;
	}
	public int getOrd_cancel() {
		return ord_cancel;
	}
	public void setOrd_cancel(int ord_cancel) {
		this.ord_cancel = ord_cancel;
	}
	 
	 
}
