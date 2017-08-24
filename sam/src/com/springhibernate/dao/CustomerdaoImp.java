package com.springhibernate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springhibernate.entity.CustomersTable;

@Repository
public class CustomerdaoImp implements Customerdao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<CustomersTable> getcustomers() {

		// get current session
		Session currentsession = sessionFactory.getCurrentSession();

		// create query
		Query<CustomersTable> theQuery = currentsession.createQuery("from CustomersTable", CustomersTable.class);

		// execute query
		List<CustomersTable> customers = theQuery.getResultList();

		// return results
		return customers;

	}

}
