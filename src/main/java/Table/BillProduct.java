package Table;

import java.sql.Date;

public class BillProduct {
	
	private int id;
	private String xuatxu;
	private String name12;
	private float price;
	private Date timedate;
	private float payment;
	private Bill bill;
	
	public Bill getBill() {
		return bill;
	}
	public void setBill(Bill bill) {
		this.bill = bill;
	}
	public float getPayment() {
		return payment;
	}
	public void setPayment(float payment) {
		this.payment = payment;
	}
	public Date getTimedate() {
		return timedate;
	}
	public void setTimedate(Date timedate) {
		this.timedate = timedate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getXuatxu() {
		return xuatxu;
	}
	public void setXuatxu(String xuatxu) {
		this.xuatxu = xuatxu;
	}
	public String getName12() {
		return name12;
	}
	public void setName12(String name) {
		this.name12 = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	

}
