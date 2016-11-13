package spring.mvc.ROOT.dto;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

@Alias("prod")
public class ProductDTO {
	private Integer pronum, price, stock, delcharge,stars;
	private String name,largecategory,smallcategory,launchdate,expireddate,from,options,text,delop,delinfo;
	private String tn_orgname,tn_sysname,d_1_sysname,d_1_orgname,d_2_sysname,d_2_orgname,d_3_sysname,d_3_orgname,d_4_sysname,d_4_orgname;
	private Date savedate;
	private String seller;
	
	public int getPronum() {
		return pronum;
	}
	public void setPronum(Integer pronum) {
		this.pronum = pronum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	public int getDelcharge() {
		return delcharge;
	}
	public void setDelcharge(Integer delcharge) {
		this.delcharge = delcharge;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLargecategory() {
		return largecategory;
	}
	public void setLargecategory(String largecategory) {
		this.largecategory = largecategory;
	}
	public String getSmallcategory() {
		return smallcategory;
	}
	public void setSmallcategory(String smallcategory) {
		this.smallcategory = smallcategory;
	}
	public String getLaunchdate() {
		return launchdate;
	}
	public void setLaunchdate(String launchdate) {
		this.launchdate = launchdate;
	}
	public String getExpireddate() {
		return expireddate;
	}
	public void setExpireddate(String expireddate) {
		this.expireddate = expireddate;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getOptions() {
		return options;
	}
	public void setOptions(String options) {
		this.options = options;
	}
	public String getTn_orgname() {
		return tn_orgname;
	}
	public void setTn_orgname(String tn_orgname) {
		this.tn_orgname = tn_orgname;
	}
	public String getTn_sysname() {
		return tn_sysname;
	}
	public void setTn_sysname(String tn_sysname) {
		this.tn_sysname = tn_sysname;
	}
	public String getD_1_sysname() {
		return d_1_sysname;
	}
	public void setD_1_sysname(String d_1_sysname) {
		this.d_1_sysname = d_1_sysname;
	}
	public String getD_1_orgname() {
		return d_1_orgname;
	}
	public void setD_1_orgname(String d_1_orgname) {
		this.d_1_orgname = d_1_orgname;
	}
	public String getD_2_sysname() {
		return d_2_sysname;
	}
	public void setD_2_sysname(String d_2_sysname) {
		this.d_2_sysname = d_2_sysname;
	}
	public String getD_2_orgname() {
		return d_2_orgname;
	}
	public void setD_2_orgname(String d_2_orgname) {
		this.d_2_orgname = d_2_orgname;
	}
	public String getD_3_sysname() {
		return d_3_sysname;
	}
	public void setD_3_sysname(String d_3_sysname) {
		this.d_3_sysname = d_3_sysname;
	}
	public String getD_3_orgname() {
		return d_3_orgname;
	}
	public void setD_3_orgname(String d_3_orgname) {
		this.d_3_orgname = d_3_orgname;
	}
	public String getD_4_sysname() {
		return d_4_sysname;
	}
	public void setD_4_sysname(String d_4_sysname) {
		this.d_4_sysname = d_4_sysname;
	}
	public String getD_4_orgname() {
		return d_4_orgname;
	}
	public void setD_4_orgname(String d_4_orgname) {
		this.d_4_orgname = d_4_orgname;
	}
	public Date getSavedate() {
		return savedate;
	}
	public void setSavedate(Date savedate) {
		this.savedate = savedate;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getDelop() {
		return delop;
	}
	public void setDelop(String delop) {
		this.delop = delop;
	}
	public String getDelinfo() {
		return delinfo;
	}
	public void setDelinfo(String delinfo) {
		this.delinfo = delinfo;
	}
	public Integer getStars() {
		return stars;
	}
	public void setStars(Integer stars) {
		this.stars = stars;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	
}
