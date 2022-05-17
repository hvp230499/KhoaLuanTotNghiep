/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * @author USER
 *
 */
@Table(name = "NguoiDung")
@Entity(name = "NguoiDung")
public class NguoiDung {
	@Id
	@Column(name = "Username", columnDefinition = "varchar(50)")
	private String Username;
	@Column(name = "HoTen", columnDefinition = "nvarchar(100)")
	private String HoTen;
	@Column(name = "SDT", columnDefinition = "varchar(15)")
	private String SDT;
	@Column(name = "Email", unique = true, columnDefinition = "varchar(50)")
	private String Email;
	@Column(name = "Password", columnDefinition = "varchar(50)")
	private String Password;
	
	@OneToMany(mappedBy = "NguoiDung")
	@Cascade({CascadeType.SAVE_UPDATE, CascadeType.REMOVE})
	private List<Post> Posts;
		
	public NguoiDung() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NguoiDung(String username, String hoTen, String sDT, String email, String password) {
		super();
		Username = username;
		HoTen = hoTen;
		SDT = sDT;
		Email = email;
		Password = password;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public List<Post> getPosts() {
		return Posts;
	}
	public void setPosts(List<Post> posts) {
		Posts = posts;
	}
	
}
