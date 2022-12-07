package com.trips.mapper.payment;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.trips.domain.payment.Cart;
import com.trips.domain.payment.CartList;


@Mapper
public interface CartMapper {

	public int addCart(Cart cart);

	public List<CartList> cartList(@Param("id") String id);

	public int deleteCart(int cart_id);
	
	public void deleteAllCart(String id);

	}

