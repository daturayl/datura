package com.jbit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.jbit.base.impl.BaseDaoImpl;
import com.jbit.dao.GoodsDao;
import com.jbit.entity.Goods;

public class GoodsDaoImpl extends BaseDaoImpl<Goods> implements GoodsDao{


	public List<Goods> getAll(Goods goods) {
		List<Goods> list=new ArrayList<Goods>();
		String hql="";
			try {
				if(goods==null||goods.getGoodsdistrict()==0){
					hql="from Goods";
				}else{
					hql="from Goods where goodsdistrict="+goods.getGoodsdistrict();
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		return this.findByHql(hql, null);
		
	}

	public Goods getById(int id) {

		return this.getById(id);
	}


	public void updateGoods(Goods goods) {
		
	}

	
}
