/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.repositories;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kl.phuong.entities.NguoiDung;

/**
 * @author USER
 *
 */
@Repository
public class UserRepository {
	@Autowired
	private SessionFactory sf;

	public List<NguoiDung> findAll() {

		Session session = sf.openSession();

		String hql = "from User";
		Query<NguoiDung> query = session.createQuery(hql, NguoiDung.class);

		List<NguoiDung> datas = query.getResultList();
		session.close();
		return datas;
	}

	public NguoiDung findById(String UserName) {

		Session session = sf.openSession();

		NguoiDung data = session.get(NguoiDung.class, UserName);

		session.close();
		return data;
	}

	public boolean isNguoiDung(String Username, String Password) {
		NguoiDung user = findById(Username);
		if (user == null) {
			return false;
		} else {
			if (user.getPassword().equals(Password)) {
				return true;
			} else {
				return false;
			}
		}
	}

	public void save(NguoiDung entity) {

		Session session = sf.openSession();
		session.beginTransaction();

		session.save(entity);

		session.getTransaction().commit();
		session.close();
	}

	public void update(NguoiDung entity) {
		Session session = sf.openSession();
		session.beginTransaction();

		session.update(entity);

		session.getTransaction().commit();
		session.close();
	}

	public void delete(String UserName) {

		Session session = sf.openSession();
		session.beginTransaction();
		NguoiDung data = session.get(NguoiDung.class, UserName);
		if (data != null) {
			session.delete(data);
		}

		session.getTransaction().commit();
		session.close();
	}
}
