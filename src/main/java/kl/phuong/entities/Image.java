/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.entities;

import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * @author USER
 *
 */
@Table(name = "Image")
@Entity(name = "Image")
public class Image {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int ID;
	@Column(name = "Name")
	private String Name;
	@Column(name = "Image", columnDefinition = "varbinary(max)")
	private byte[] Image;
	@Column(name ="PostID")
	private int PostID;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "PostID", insertable = false, updatable = false)
	private Post Post;
	
	public Image() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Image(int iD, String name, byte[] image, int postID) {
		super();
		ID = iD;
		Name = name;
		Image = image;
		PostID = postID;
	}
	
	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public byte[] getImage() {
		return Image;
	}

	public void setImage(byte[] image) {
		Image = image;
	}

	public int getPostID() {
		return PostID;
	}

	public void setPostID(int postID) {
		PostID = postID;
	}

	public String getStringImage()
	{
		return new String(Base64.getEncoder().encode(this.getImage())); 
	}

	public Post getPost() {
		return Post;
	}

	public void setPost(Post post) {
		Post = post;
	}
	
}
