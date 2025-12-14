package com.entity.view;

import com.entity.QicaizulinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 器材租赁
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2025-03-07 20:25:08
 */
@TableName("qicaizulin")
public class QicaizulinView  extends QicaizulinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QicaizulinView(){
	}
 
 	public QicaizulinView(QicaizulinEntity qicaizulinEntity){
 	try {
			BeanUtils.copyProperties(this, qicaizulinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
