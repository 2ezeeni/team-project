package com.shoppingmall.dto;

import com.sun.mail.handlers.image_gif;

public class M_PackageDto {

	private int m_package_no;
	private String m_product_code;
	private String m_seasonTone_category;
	private String m_product_code2;
	private String m_product_code3;
	private String m_product_code4;
	private image_gif m_package_image;
	private int m_package_price;
	private int m_package_discount;

	public M_PackageDto() {

	}

	public M_PackageDto(int m_package_no, String m_product_code, String m_seasonTone_category, String m_product_code2,
			String m_product_code3, String m_product_code4, image_gif m_package_image, int m_package_price,
			int m_package_discount) {
		super();
		this.m_package_no = m_package_no;
		this.m_product_code = m_product_code;
		this.m_seasonTone_category = m_seasonTone_category;
		this.m_product_code2 = m_product_code2;
		this.m_product_code3 = m_product_code3;
		this.m_product_code4 = m_product_code4;
		this.m_package_image = m_package_image;
		this.m_package_price = m_package_price;
		this.m_package_discount = m_package_discount;
	}

	public int getM_package_no() {
		return m_package_no;
	}

	public void setM_package_no(int m_package_no) {
		this.m_package_no = m_package_no;
	}

	public String getM_product_code() {
		return m_product_code;
	}

	public void setM_product_code(String m_product_code) {
		this.m_product_code = m_product_code;
	}

	public String getM_seasonTone_category() {
		return m_seasonTone_category;
	}

	public void setM_seasonTone_category(String m_seasonTone_category) {
		this.m_seasonTone_category = m_seasonTone_category;
	}

	public String getM_product_code2() {
		return m_product_code2;
	}

	public void setM_product_code2(String m_product_code2) {
		this.m_product_code2 = m_product_code2;
	}

	public String getM_product_code3() {
		return m_product_code3;
	}

	public void setM_product_code3(String m_product_code3) {
		this.m_product_code3 = m_product_code3;
	}

	public String getM_product_code4() {
		return m_product_code4;
	}

	public void setM_product_code4(String m_product_code4) {
		this.m_product_code4 = m_product_code4;
	}

	public image_gif getM_package_image() {
		return m_package_image;
	}

	public void setM_package_image(image_gif m_package_image) {
		this.m_package_image = m_package_image;
	}

	public int getM_package_price() {
		return m_package_price;
	}

	public void setM_package_price(int m_package_price) {
		this.m_package_price = m_package_price;
	}

	public int getM_package_discount() {
		return m_package_discount;
	}

	public void setM_package_discount(int m_package_discount) {
		this.m_package_discount = m_package_discount;
	}

	
	
}



