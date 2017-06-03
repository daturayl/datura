package com.jbit.service;

import java.util.List;

import com.jbit.entity.Goods;

public interface GoodsService {
	public List<Goods> getAll(Goods goods);
	
	public void updateGoods(Goods good);
	
	public Goods getById(int id);

}
