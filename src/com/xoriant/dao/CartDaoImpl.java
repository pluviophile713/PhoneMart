package com.xoriant.dao;

import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.xoriant.modals.Cart;
import com.xoriant.modals.Login;
import com.xoriant.modals.Order;
import com.xoriant.modals.Phone;

public class CartDaoImpl implements CartDao {
	
	SessionFactory factory;
	
	public CartDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	    Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
		factory = meta.getSessionFactoryBuilder().build();
	}

	@Override
	public Integer addToCart(Cart cart) {
		Integer cartId= null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		cartId = (Integer) session.save(cart);
		txn.commit();
		session.close();
		return cartId;
	}

	@Override
	public void removeFromCart(Integer phoneId) {
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		//Cart cart = session.get(Cart.class, phoneId);
		
		Cart cart=null;
		String hql = "from Cart C where C.phoneId=:pid AND C.c";
		
		try {
			TypedQuery<Cart> query=session.createQuery(hql);
			query.setParameter("pid", phoneId);
			cart=query.getSingleResult();
			if(cart!=null) {
				session.delete(cart);
			}
		} catch (NoResultException noResultException) {
			System.out.println("\n\n\n no records in carts");
		}
		
		
		
		//System.out.println("****************************************************");
		//System.out.println(cart);
		
		
		txn.commit();
		session.close();
		
	}

	@Override
	public List<Phone> fetchPhones(Integer customerId) {
		List<Phone> phones =null;
		
		Session session=factory.openSession();
		Transaction txn=session.beginTransaction();
		
		// String hql="FROM Login L where L.userName=:u AND L.password=:p";
		//String hql = "from Phone pd  where pd.phoneId in (select cd.phoneId from Cart cd  where cd.customerId=:cid)";
		
		String hql="select pd.phoneId from Phone pd INNER JOIN (select cd.phoneId from Cart cd  where cd.customerId=:cid) as sub ON pd.phoneId=sub.phoneId";
		TypedQuery<Phone> query=session.createQuery(hql);
		query.setParameter("cid", customerId);
		
		phones=query.getResultList();
		return phones;
	}
	
}
