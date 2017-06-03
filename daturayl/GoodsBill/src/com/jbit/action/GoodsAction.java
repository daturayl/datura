package com.jbit.action;

import java.util.List;

import com.jbit.entity.Goods;
import com.jbit.service.GoodsService;



public class GoodsAction {
	private GoodsService service;
	private List<Goods> list;
	private Goods goods;
	
	
	//��ѯ������Ϣ
	public String getAll(){
		list=service.getAll(goods);
		return "success";
	}
	 //����ID��ѯ
    public String getById(){
    	goods=service.getById(goods.getId());
    	return "success";
    }
	 //�޸�
    public String updateGoods(){
    	service.updateGoods(goods);
    	return "success";
    }
	
	public GoodsService getService() {
		return service;
	}
	public void setService(GoodsService service) {
		this.service = service;
	}
	public List<Goods> getList() {
		return list;
	}
	public void setList(List<Goods> list) {
		this.list = list;
	}
	public Goods getGoods() {
		return goods;
	}
	public void setGoods(Goods goods) {
		this.goods = goods;
	}
	
	
}
