package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.QicaicaigouDao;
import com.entity.QicaicaigouEntity;
import com.service.QicaicaigouService;
import com.entity.vo.QicaicaigouVO;
import com.entity.view.QicaicaigouView;

@Service("qicaicaigouService")
public class QicaicaigouServiceImpl extends ServiceImpl<QicaicaigouDao, QicaicaigouEntity> implements QicaicaigouService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QicaicaigouEntity> page = this.selectPage(
                new Query<QicaicaigouEntity>(params).getPage(),
                new EntityWrapper<QicaicaigouEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QicaicaigouEntity> wrapper) {
		  Page<QicaicaigouView> page =new Query<QicaicaigouView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}

    
    @Override
	public List<QicaicaigouVO> selectListVO(Wrapper<QicaicaigouEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QicaicaigouVO selectVO(Wrapper<QicaicaigouEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QicaicaigouView> selectListView(Wrapper<QicaicaigouEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QicaicaigouView selectView(Wrapper<QicaicaigouEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
