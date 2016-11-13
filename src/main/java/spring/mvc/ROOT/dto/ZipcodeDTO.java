package spring.mvc.ROOT.dto;

import org.apache.ibatis.type.Alias;

@Alias("zipcode")
public class ZipcodeDTO {

	private Integer zipcode, num;
	private String sido, sigungu, eupmyeondong, doseo, bunji, buildname, address, ri;

	public String getRi() {
		return ri;
	}

	public void setRi(String ri) {
		this.ri = ri;
	}

	public String getEupmyeondong() {
		return eupmyeondong;
	}

	public void setEupmyeondong(String eupmyeondong) {
		this.eupmyeondong = eupmyeondong;
	}

	public Integer getZipcode() {
		return zipcode;
	}

	public void setZipcode(Integer zipcode) {
		this.zipcode = zipcode;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public String getSido() {
		return sido;
	}

	public void setSido(String sido) {
		this.sido = sido;
	}

	public String getSigungu() {
		return sigungu;
	}

	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}

	public String getDoseo() {
		return doseo;
	}

	public void setDoseo(String doseo) {
		this.doseo = doseo;
	}

	public String getBunji() {
		return bunji;
	}

	public void setBunji(String bunji) {
		this.bunji = bunji;
	}

	public String getBuildname() {
		return buildname;
	}

	public void setBuildname(String buildname) {
		this.buildname = buildname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
