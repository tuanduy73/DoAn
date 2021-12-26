package Table;

import java.sql.Date;

public class Bill {
	private int id;
	private String TEN;// nguoi mua
	private Date buyDate;// ngay mua
	private float priceTotal;// tong tien

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}		
	public String getTEN() {
		return TEN;
	}
	public void setTEN(String tEN) {
		TEN = tEN;
	}
	public float getPriceTotal() {
		return priceTotal;
	}
	public void setPriceTotal(float priceTotal) {
		this.priceTotal = priceTotal;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

}
