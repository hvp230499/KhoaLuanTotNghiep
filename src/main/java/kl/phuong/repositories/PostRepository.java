/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.repositories;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kl.phuong.entities.Filter;
import kl.phuong.entities.Post;

/**
 * @author USER
 *
 */
@Repository
public class PostRepository {
	@Autowired
	private SessionFactory sf;

	public List<Post> findByChuyenMuc(String ChuyenMuc) {

		Session session = sf.openSession();

		String hql = "select distinct p from Post p join fetch p.Images where p.ChuyenMuc = :chuyenmuc order by p.DatePost desc";
		Query<Post> query = session.createQuery(hql, Post.class);
		query.setParameter("chuyenmuc", ChuyenMuc);

		List<Post> datas = query.getResultList();

		session.close();
		return datas;
	}

	public List<Post> filter(String ChuyenMuc, Filter filter) {
		Session session = sf.openSession();
		
		String whereTinh = filter.getTinh() == "" ? "" : (" and p.Tinh = :tinh");
		String whereHuyen = filter.getHuyen() == "" ? "" : (" and p.Huyen = :huyen");
		String whereXa = filter.getXa() == "" ? "" : (" and p.Xa = :xa");
		String whereDiaChi = filter.getDiaChi() == "" ? "" : (" and p.DiaChi like :diachi");
		String whereGia = filter.getGiaThue() == 0? "" : (" and p.GiaThue <= " + filter.getGiaThue());
		String whereDienTich = filter.getDienTich() == 0 ? "" : (" and p.DienTich >= " + filter.getDienTich());

		String hql = "select distinct p from Post p join fetch p.Images where p.ChuyenMuc = :chuyenmuc " + whereTinh
				+ whereHuyen + whereXa + whereDiaChi + whereGia + whereDienTich + " order by p.DatePost desc";
		Query<Post> query = session.createQuery(hql, Post.class);
		query.setParameter("chuyenmuc", ChuyenMuc);
		if(filter.getTinh() != "")
			query.setParameter("tinh", filter.getTinh());
		if(filter.getHuyen() != "")
			query.setParameter("huyen", filter.getHuyen());
		if(filter.getXa() != "")
			query.setParameter("xa", filter.getXa());
		if(filter.getDiaChi() != "")
			query.setParameter("diachi", "%"+filter.getDiaChi()+"%");

		List<Post> datas = query.getResultList();

		session.close();
		return datas;
	}

	public List<Post> findAll(String username) {

		Session session = sf.openSession();

		String hql = "select distinct p from Post p join fetch p.Images where Username = :username order by p.DatePost desc";
		Query<Post> query = session.createQuery(hql, Post.class);
		query.setParameter("username", username);

		List<Post> datas = query.getResultList();
		session.close();
		return datas;
	}
	
	public List<Post> findAll() {
		
		Session session = sf.openSession();
		
		String hql = "select distinct p from Post p join fetch p.Images";
		Query<Post> query = session.createQuery(hql, Post.class);
		
		List<Post> datas = query.getResultList();
		session.close();
		return datas;
	}

	public Post findById(int PostID) {

		Session session = sf.openSession();

		Post data = session.get(Post.class, PostID);

		session.close();
		return data;
	}

	public int save(Post entity) {

		Session session = sf.openSession();
		session.beginTransaction();

		Serializable PostID = session.save(entity);

		session.getTransaction().commit();
		session.close();
		return (int) PostID;
	}

	public void update(Post entity) {
		Session session = sf.openSession();
		session.beginTransaction();

		session.update(entity);

		session.getTransaction().commit();
		session.close();
	}

	public void delete(int PostID) {

		Session session = sf.openSession();
		session.beginTransaction();
		Post data = session.get(Post.class, PostID);
		if (data != null) {
			session.delete(data);
		}

		session.getTransaction().commit();
		session.close();
	}
}
