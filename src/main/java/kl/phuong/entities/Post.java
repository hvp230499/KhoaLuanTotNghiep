/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.entities;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * @author USER
 *
 */
@Table(name = "Post")
@Entity(name = "Post")
public class Post {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PostID")
	private int PostID;
	@Column(name = "TieuDe", columnDefinition = "nvarchar(200)")
	private String TieuDe;
	@Column(name = "ChuyenMuc", columnDefinition = "nvarchar(50)")
	private String ChuyenMuc;
	@Column(name = "DienTich")
	private int DienTich;
	@Column(name = "GiaThue")
	private long GiaThue;
	@Column(name = "ChuKyTT", columnDefinition = "nvarchar(50)")
	private String ChuKyTT;
	@Column(name = "Tinh", columnDefinition = "nvarchar(50)")
	private String Tinh;
	@Column(name = "Huyen", columnDefinition = "nvarchar(50)")
	private String Huyen;
	@Column(name = "Xa", columnDefinition = "nvarchar(50)")
	private String Xa;
	@Column(name = "DiaChi", columnDefinition = "nvarchar(100)")
	private String DiaChi;
	@Column(name = "MoTa", columnDefinition = "nvarchar(max)")
	private String MoTa;
	@Column(name = "TenLienHe", columnDefinition = "nvarchar(100)")
	private String TenLienHe;
	@Column(name = "SDTLienHe", columnDefinition = "varchar(15)")
	private String SDTLienHe;
	@Column(name = "Lat", columnDefinition = "varchar(50)")
	private String Lat;
	@Column(name = "Lng", columnDefinition = "varchar(50)")
	private String Lng;
	@Column(name = "Username", columnDefinition = "varchar(50)")
	private String Username;
	@Column(name = "DatePost")
	private LocalDate DatePost = LocalDate.now();

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "Post")
	@Cascade({ CascadeType.SAVE_UPDATE, CascadeType.REMOVE })
	private List<Image> Images;

	@ManyToOne
	@JoinColumn(name = "Username", insertable = false, updatable = false)
	private NguoiDung NguoiDung;

	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Post(int postID, String tieuDe, String chuyenMuc, int dienTich, long giaThue, String chuKyTT, String tinh,
			String huyen, String xa, String diaChi, String moTa, String tenLienHe, String sDTLienHe, String lat,
			String lng, String username) {
		super();
		PostID = postID;
		TieuDe = tieuDe;
		ChuyenMuc = chuyenMuc;
		DienTich = dienTich;
		GiaThue = giaThue;
		ChuKyTT = chuKyTT;
		Tinh = tinh;
		Huyen = huyen;
		Xa = xa;
		DiaChi = diaChi;
		MoTa = moTa;
		TenLienHe = tenLienHe;
		SDTLienHe = sDTLienHe;
		Lat = lat;
		Lng = lng;
		Username = username;
	}

	public int getPostID() {
		return PostID;
	}

	public void setPostID(int postID) {
		PostID = postID;
	}

	public String getTieuDe() {
		return TieuDe;
	}

	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}

	public String getChuyenMuc() {
		return ChuyenMuc;
	}

	public void setChuyenMuc(String chuyenMuc) {
		ChuyenMuc = chuyenMuc;
	}

	public int getDienTich() {
		return DienTich;
	}

	public void setDienTich(int dienTich) {
		DienTich = dienTich;
	}

	public long getGiaThue() {
		return GiaThue;
	}

	public void setGiaThue(long giaThue) {
		GiaThue = giaThue;
	}

	public String getChuKyTT() {
		return ChuKyTT;
	}

	public void setChuKyTT(String chuKyTT) {
		ChuKyTT = chuKyTT;
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

	public String getMoTa() {
		return MoTa;
	}

	public void setMoTa(String moTa) {
		MoTa = moTa;
	}

	public String getTenLienHe() {
		return TenLienHe;
	}

	public void setTenLienHe(String tenLienHe) {
		TenLienHe = tenLienHe;
	}

	public String getSDTLienHe() {
		return SDTLienHe;
	}

	public void setSDTLienHe(String sDTLienHe) {
		SDTLienHe = sDTLienHe;
	}

	public String getLat() {
		return Lat;
	}

	public void setLat(String lat) {
		Lat = lat;
	}

	public String getLng() {
		return Lng;
	}

	public void setLng(String lng) {
		Lng = lng;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public List<Image> getImages() {
		return Images;
	}

	public void setImages(List<Image> images) {
		Images = images;
	}

	public NguoiDung getNguoiDung() {
		return NguoiDung;
	}

	public void setNguoiDung(NguoiDung nguoiDung) {
		NguoiDung = nguoiDung;
	}

	public LocalDate getDatePost() {
		return DatePost;
	}

	public void setDatePost(LocalDate datePost) {
		DatePost = datePost;
	}
	
	

}
