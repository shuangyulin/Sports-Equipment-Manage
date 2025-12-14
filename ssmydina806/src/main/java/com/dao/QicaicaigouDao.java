package com.dao;

import com.entity.QicaicaigouEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QicaicaigouVO;
import com.entity.view.QicaicaigouView;


/**
 * 器材采购
 * 
 * @author 
 * @email 
 * @date 2025-03-07 20:25:08
 */
public interface QicaicaigouDao extends BaseMapper<QicaicaigouEntity> {
	
	List<QicaicaigouVO> selectListVO(@Param("ew") Wrapper<QicaicaigouEntity> wrapper);
	
	QicaicaigouVO selectVO(@Param("ew") Wrapper<QicaicaigouEntity> wrapper);
	
	List<QicaicaigouView> selectListView(@Param("ew") Wrapper<QicaicaigouEntity> wrapper);

	List<QicaicaigouView> selectListView(Pagination page,@Param("ew") Wrapper<QicaicaigouEntity> wrapper);

	
	QicaicaigouView selectView(@Param("ew") Wrapper<QicaicaigouEntity> wrapper);
	

}
