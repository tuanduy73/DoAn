package Table;

public class Product {
	private int id;
	private String name;
	private float price;
	private String xuatxu;
	private String description;
	private Cartegory category;// category_id

	public Cartegory getCategory() {
		return category;
	}

	public void setCategory(Cartegory category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getXuatxu() {
		return xuatxu;
	}

	public void setXuatxu(String image) {
		this.xuatxu = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
