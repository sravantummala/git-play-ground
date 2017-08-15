package com.Spring.Service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.Spring.Dao.Registrationdao;
import com.Spring.Dao.RegistrationdaoImp;
import com.Spring.domain.Users;

@Service
public class RegistrationserviceImp implements Registrationservice {

	@Autowired
	private Registrationdao registrationdao;
	//private RegistrationdaoImp registrationdaoimp;
	public boolean register(Users users) {
		// TODO Auto-generated method stub
		//System.out.println(users);
		int i=registrationdao.save(users);
		//int j=registrationdaoimp.save(users);
		
		if(i>0) {
			System.out.println("User registered ");
			
			return true;
		}
		
		return false;
		
	}

	
}
