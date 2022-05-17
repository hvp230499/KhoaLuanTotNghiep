/*
*	@author: PhuongHV6
*	@birthday: 2000-08-20
*/
/**
 * 
 */
package kl.phuong.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kl.phuong.entities.NguoiDung;
import kl.phuong.repositories.UserRepository;

/**
 * @author USER
 *
 */
@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public List<NguoiDung> findAll() {
		return userRepository.findAll();
	}

	public NguoiDung findById(String UserName) {
		return userRepository.findById(UserName);
	}

	public boolean isNguoiDung(String Username, String Password) {
		return userRepository.isNguoiDung(Username, Password);
	}
	
	public void save(NguoiDung entity) {
		userRepository.save(entity);
	}

	public void update(NguoiDung entity) {
		userRepository.update(entity);
	}
	
	public void delete(String UserName) {
		userRepository.delete(UserName);
	}
}
