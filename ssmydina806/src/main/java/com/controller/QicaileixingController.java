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

import com.entity.QicaileixingEntity;
import com.entity.view.QicaileixingView;

import com.service.QicaileixingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;

/**
 * 器材类型
 * 后端接口
 * @author 
 * @email 
 * @date 2025-03-07 20:25:08
 */
@RestController
@RequestMapping("/qicaileixing")
public class QicaileixingController {
    @Autowired
    private QicaileixingService qicaileixingService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,QicaileixingEntity qicaileixing,
		HttpServletRequest request){

        //设置查询条件
        EntityWrapper<QicaileixingEntity> ew = new EntityWrapper<QicaileixingEntity>();


        //查询结果
		PageUtils page = qicaileixingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qicaileixing), params), params));
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
    public R list(@RequestParam Map<String, Object> params,QicaileixingEntity qicaileixing,
		HttpServletRequest request){
        //设置查询条件
        EntityWrapper<QicaileixingEntity> ew = new EntityWrapper<QicaileixingEntity>();

        //查询结果
		PageUtils page = qicaileixingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, qicaileixing), params), params));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page,deSens);
        return R.ok().put("data", page);
    }


	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( QicaileixingEntity qicaileixing){
       	EntityWrapper<QicaileixingEntity> ew = new EntityWrapper<QicaileixingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( qicaileixing, "qicaileixing"));
        return R.ok().put("data", qicaileixingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(QicaileixingEntity qicaileixing){
        EntityWrapper< QicaileixingEntity> ew = new EntityWrapper< QicaileixingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( qicaileixing, "qicaileixing"));
		QicaileixingView qicaileixingView =  qicaileixingService.selectView(ew);
		return R.ok("查询器材类型成功").put("data", qicaileixingView);
    }

    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        QicaileixingEntity qicaileixing = qicaileixingService.selectById(id);
        qicaileixing = qicaileixingService.selectView(new EntityWrapper<QicaileixingEntity>().eq("id", id));
				Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(qicaileixing,deSens);
        return R.ok().put("data", qicaileixing);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        QicaileixingEntity qicaileixing = qicaileixingService.selectById(id);
        qicaileixing = qicaileixingService.selectView(new EntityWrapper<QicaileixingEntity>().eq("id", id));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(qicaileixing,deSens);
        return R.ok().put("data", qicaileixing);
    }




    /**
     * 后台保存
     */
    @RequestMapping("/save")
    @SysLog("新增器材类型")
    public R save(@RequestBody QicaileixingEntity qicaileixing, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qicaileixing);

        qicaileixingService.insert(qicaileixing);
        return R.ok().put("data",qicaileixing.getId());
    }

    /**
     * 前台保存
     */
    @SysLog("新增器材类型")
    @RequestMapping("/add")
    public R add(@RequestBody QicaileixingEntity qicaileixing, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(qicaileixing);

        qicaileixingService.insert(qicaileixing);
        return R.ok().put("data",qicaileixing.getId());
    }




    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改器材类型")
    public R update(@RequestBody QicaileixingEntity qicaileixing, HttpServletRequest request){
        //ValidatorUtils.validateEntity(qicaileixing);
        //全部更新
        qicaileixingService.updateById(qicaileixing);
        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除器材类型")
    public R delete(@RequestBody Long[] ids){
        qicaileixingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }










}
