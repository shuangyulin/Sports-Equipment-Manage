package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import java.lang.*;
import java.math.*;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import com.utils.DeSensUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;
import com.annotation.SysLog;

import com.entity.QicaizulinEntity;
import com.entity.view.QicaizulinView;

import com.service.QicaizulinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;

/**
 * 器材租赁
 * 后端接口
 * @author 
 * @email 
 * @date 2025-03-07 20:25:08
 */
@RestController
@RequestMapping("/qicaizulin")
public class QicaizulinController {
    @Autowired
    private QicaizulinService qicaizulinService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QicaizulinEntity qicaizulin,
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			qicaizulin.setYonghuzhanghao((String)request.getSession().getAttribute("username"));
		}
        //设置查询条件
        EntityWrapper<QicaizulinEntity> ew = new EntityWrapper<QicaizulinEntity>();


        //查询结果
		PageUtils page = qicaizulinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qicaizulin), params), params));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page,deSens);
        return R.ok().put("data", page);
    }

    /**
     * 前台列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,QicaizulinEntity qicaizulin,
		HttpServletRequest request){
        //设置查询条件
        EntityWrapper<QicaizulinEntity> ew = new EntityWrapper<QicaizulinEntity>();

        //查询结果
		PageUtils page = qicaizulinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qicaizulin), params), params));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page,deSens);
        return R.ok().put("data", page);
    }


	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QicaizulinEntity qicaizulin){
       	EntityWrapper<QicaizulinEntity> ew = new EntityWrapper<QicaizulinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qicaizulin, "qicaizulin"));
        return R.ok().put("data", qicaizulinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QicaizulinEntity qicaizulin){
        EntityWrapper< QicaizulinEntity> ew = new EntityWrapper< QicaizulinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qicaizulin, "qicaizulin"));
		QicaizulinView qicaizulinView =  qicaizulinService.selectView(ew);
		return R.ok("查询器材租赁成功").put("data", qicaizulinView);
    }

    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QicaizulinEntity qicaizulin = qicaizulinService.selectById(id);
        qicaizulin = qicaizulinService.selectView(new EntityWrapper<QicaizulinEntity>().eq("id", id));
				Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(qicaizulin,deSens);
        return R.ok().put("data", qicaizulin);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QicaizulinEntity qicaizulin = qicaizulinService.selectById(id);
        qicaizulin = qicaizulinService.selectView(new EntityWrapper<QicaizulinEntity>().eq("id", id));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(qicaizulin,deSens);
        return R.ok().put("data", qicaizulin);
    }




    /**
     * 后台保存
     */
    @RequestMapping("/save")
    @SysLog("新增器材租赁")
    public R save(@RequestBody QicaizulinEntity qicaizulin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qicaizulin);

        qicaizulinService.insert(qicaizulin);
        return R.ok().put("data",qicaizulin.getId());
    }

    /**
     * 前台保存
     */
    @SysLog("新增器材租赁")
    @RequestMapping("/add")
    public R add(@RequestBody QicaizulinEntity qicaizulin, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(qicaizulin);

        qicaizulinService.insert(qicaizulin);
        return R.ok().put("data",qicaizulin.getId());
    }




    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改器材租赁")
    public R update(@RequestBody QicaizulinEntity qicaizulin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qicaizulin);
        //全部更新
        qicaizulinService.updateById(qicaizulin);
        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除器材租赁")
    public R delete(@RequestBody Long[] ids){
        qicaizulinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }










}
