package com.springhibernate.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.springhibernate.entity.CustomersTable;

@Repository
public interface Customerdao {

	public List<CustomersTable> getcustomers();

}
