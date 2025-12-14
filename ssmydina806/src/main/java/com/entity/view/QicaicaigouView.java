package com.entity.view;

import com.entity.QicaicaigouEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import java.math.BigDecimal;

import java.io.Serializable;
import com.utils.EncryptUtil;
 

/**
 * 器材采购
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2025-03-07 20:25:08
 */
@TableName("qicaicaigou")
public class QicaicaigouView  extends QicaicaigouEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QicaicaigouView(){
	}
 
 	public QicaicaigouView(QicaicaigouEntity qicaicaigouEntity){
 	try {
			BeanUtils.copyProperties(this, qicaicaigouEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}


}
