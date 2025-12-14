package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QicaicaigouEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QicaicaigouVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QicaicaigouView;


/**
 * 器材采购
 *
 * @author 
 * @email 
 * @date 2025-03-07 20:25:08
 */
public interface QicaicaigouService extends IService<QicaicaigouEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QicaicaigouVO> selectListVO(Wrapper<QicaicaigouEntity> wrapper);
   	
   	QicaicaigouVO selectVO(@Param("ew") Wrapper<QicaicaigouEntity> wrapper);
   	
   	List<QicaicaigouView> selectListView(Wrapper<QicaicaigouEntity> wrapper);
   	
   	QicaicaigouView selectView(@Param("ew") Wrapper<QicaicaigouEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QicaicaigouEntity> wrapper);

   	

}

