package com.jbit.service.impl;

import java.util.List;

import com.jbit.dao.GoodsDao;
import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;

public class GoodsServiceImpl implements GoodsService{
	private GoodsDao dao;
	
	
	public GoodsDao getDao() {
		return dao;
	}

	public void setDao(GoodsDao dao) {
		this.dao = dao;
	}

	

	public void updateGoods(Goods good) {
		dao.updateGoods(good);
		
	}


	public Goods getById(int id) {
		
		return dao.getById(id);
	}


	public List<Goods> getAll(Goods goods) {
		
		return dao.getAll(goods);
	}

}
