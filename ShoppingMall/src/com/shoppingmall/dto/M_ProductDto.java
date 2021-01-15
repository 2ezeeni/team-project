package com.shoppingmall.dto;

import java.sql.Date;

import com.sun.mail.handlers.image_gif;

public class M_ProductDto {

	
	private int m_product_code;
	private int m_seasontone_no;
	private int m_product_category;
	private String m_product_name;
	private String m_product_color;
	private int m_product_price;
	private int m_product_discount;
	private int m_product_inventory;
	private Date m_product_regDate;
	private image_gif m_product_image;
	
	public M_ProductDto() {

	}

	

	public M_ProductDto(int m_product_code, int m_seasontone_no, int m_product_category, String m_product_name,
			String m_product_color, int m_product_price, int m_product_discount, int m_product_inventory,
			Date m_product_regDate, image_gif m_product_image) {
		super();
		this.m_product_code = m_product_code;
		this.m_seasontone_no = m_seasontone_no;
		this.m_product_category = m_product_category;
		this.m_product_name = m_product_name;
		this.m_product_color = m_product_color;
		this.m_product_price = m_product_price;
		this.m_product_discount = m_product_discount;
		this.m_product_inventory = m_product_inventory;
		this.m_product_regDate = m_product_regDate;
		this.m_product_image = m_product_image;
	}



	public int getM_product_code() {
		return m_product_code;
	}

	public void setM_product_code(int m_product_code) {
		this.m_product_code = m_product_code;
	}

	public int getM_seasontone_no() {
		return m_seasontone_no;
	}

	public void setM_seasontone_no(int m_seasontone_no) {
		this.m_seasontone_no = m_seasontone_no;
	}

	public int getM_product_category() {
		return m_product_category;
	}

	public void setM_product_category(int m_product_category) {
		this.m_product_category = m_product_category;
	}

	public String getM_product_name() {
		return m_product_name;
	}

	public void setM_product_name(String m_product_name) {
		this.m_product_name = m_product_name;
	}

	public String getM_product_color() {
		return m_product_color;
	}

	public void setM_product_color(String m_product_color) {
		this.m_product_color = m_product_color;
	}

	public int getM_product_price() {
		return m_product_price;
	}

	public void setM_product_price(int m_product_price) {
		this.m_product_price = m_product_price;
	}

	public int getM_product_discount() {
		return m_product_discount;
	}

	public void setM_product_discount(int m_product_discount) {
		this.m_product_discount = m_product_discount;
	}

	public int getM_product_inventory() {
		return m_product_inventory;
	}

	public void setM_product_inventory(int m_product_inventory) {
		this.m_product_inventory = m_product_inventory;
	}

	public Date getM_product_regDate() {
		return m_product_regDate;
	}

	public void setM_product_regDate(Date m_product_regDate) {
		this.m_product_regDate = m_product_regDate;
	}

	public image_gif getM_product_image() {
		return m_product_image;
	}

	public void setM_product_image(image_gif m_product_image) {
		this.m_product_image = m_product_image;
	}

	
	
}
