package com.jbit.dao;

import java.util.List;

import com.jbit.entity.Goods;


public interface GoodsDao {
	public List<Goods> getAll(Goods goods);
	
	public Goods getById(int id);
	
	public void updateGoods(Goods goods);
}
