package model;

public class Item {
	private int itemId; 
	private int userId;
	private String itemName;
	private String description;
	private String image;
	private int categoryId;
	private boolean sold;
	
	public Item (int itemId, int userId, String itemName, String description, String image, 
			int categoryId, boolean sold) {
		this.itemId = itemId;
		this.userId = userId;
		this.itemName = itemName;
		this.description = description;
		this.image = image;
		this.categoryId = categoryId;
		this.sold = sold;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public boolean isSold() {
		return sold;
	}

	public void setSold(boolean sold) {
		this.sold = sold;
	}
	

}
