/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.entities;

/**
 * @author USER
 *
 */
public class Filter {
	private String Tinh;
	private String Huyen;
	private String Xa;
	private String DiaChi;
	private long GiaThue;
	private int DienTich;
	public Filter() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Filter(String tinh, String huyen, String xa, String diaChi, long giaThue, int dienTich) {
		super();
		Tinh = tinh;
		Huyen = huyen;
		Xa = xa;
		DiaChi = diaChi;
		GiaThue = giaThue;
		DienTich = dienTich;
	}
	public String getTinh() {
		return Tinh;
	}
	public void setTinh(String tinh) {
		Tinh = tinh;
	}
	public String getHuyen() {
		return Huyen;
	}
	public void setHuyen(String huyen) {
		Huyen = huyen;
	}
	public String getXa() {
		return Xa;
	}
	public void setXa(String xa) {
		Xa = xa;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public long getGiaThue() {
		return GiaThue;
	}
	public void setGiaThue(long giaThue) {
		GiaThue = giaThue;
	}
	public int getDienTich() {
		return DienTich;
	}
	public void setDienTich(int dienTich) {
		DienTich = dienTich;
	}
	
}
