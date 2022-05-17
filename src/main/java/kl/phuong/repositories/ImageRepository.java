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

import kl.phuong.entities.Image;

/**
 * @author USER
 *
 */
@Repository
public class ImageRepository {
	@Autowired
	private SessionFactory sf;
	
	public List<Image> findAll(int PostID) {

        Session session = sf.openSession();

        String hql = "from Image where PostID = :id";
        Query<Image> query = session.createQuery(hql, Image.class);
        query.setParameter("id", PostID);
        
        List<Image> datas = query.getResultList();
        session.close();
        return datas;
    }

    public void save(Image entity) {

        Session session = sf.openSession();
        session.beginTransaction();

        session.save(entity);

        session.getTransaction().commit();
        session.close();
    }
    
    public void delete(int ID) {

        Session session = sf.openSession();
        session.beginTransaction();
        Image data = session.get(Image.class, ID);
        if (data != null) {
            session.delete(data);
        }

        session.getTransaction().commit();
        session.close();
    }
}
