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

import com.entity.DiscussqicaixinxiEntity;
import com.entity.view.DiscussqicaixinxiView;

import com.service.DiscussqicaixinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.MapUtils;
import com.utils.CommonUtil;

/**
 * 器材信息评论表
 * 后端接口
 * @author 
 * @email 
 * @date 2025-03-07 20:25:09
 */
@RestController
@RequestMapping("/discussqicaixinxi")
public class DiscussqicaixinxiController {
    @Autowired
    private DiscussqicaixinxiService discussqicaixinxiService;









    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DiscussqicaixinxiEntity discussqicaixinxi,
		HttpServletRequest request){

        //设置查询条件
        EntityWrapper<DiscussqicaixinxiEntity> ew = new EntityWrapper<DiscussqicaixinxiEntity>();


        //查询结果
		PageUtils page = discussqicaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discussqicaixinxi), params), params));
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
    public R list(@RequestParam Map<String, Object> params,DiscussqicaixinxiEntity discussqicaixinxi,
		HttpServletRequest request){
        //设置查询条件
        EntityWrapper<DiscussqicaixinxiEntity> ew = new EntityWrapper<DiscussqicaixinxiEntity>();

        //查询结果
		PageUtils page = discussqicaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discussqicaixinxi), params), params));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(page,deSens);
        return R.ok().put("data", page);
    }


	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DiscussqicaixinxiEntity discussqicaixinxi){
       	EntityWrapper<DiscussqicaixinxiEntity> ew = new EntityWrapper<DiscussqicaixinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( discussqicaixinxi, "discussqicaixinxi"));
        return R.ok().put("data", discussqicaixinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DiscussqicaixinxiEntity discussqicaixinxi){
        EntityWrapper< DiscussqicaixinxiEntity> ew = new EntityWrapper< DiscussqicaixinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( discussqicaixinxi, "discussqicaixinxi"));
		DiscussqicaixinxiView discussqicaixinxiView =  discussqicaixinxiService.selectView(ew);
		return R.ok("查询器材信息评论表成功").put("data", discussqicaixinxiView);
    }

    /**
     * 后台详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DiscussqicaixinxiEntity discussqicaixinxi = discussqicaixinxiService.selectById(id);
        discussqicaixinxi = discussqicaixinxiService.selectView(new EntityWrapper<DiscussqicaixinxiEntity>().eq("id", id));
				Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(discussqicaixinxi,deSens);
        return R.ok().put("data", discussqicaixinxi);
    }

    /**
     * 前台详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DiscussqicaixinxiEntity discussqicaixinxi = discussqicaixinxiService.selectById(id);
        discussqicaixinxi = discussqicaixinxiService.selectView(new EntityWrapper<DiscussqicaixinxiEntity>().eq("id", id));
        Map<String, String> deSens = new HashMap<>();
        //给需要脱敏的字段脱敏
        DeSensUtil.desensitize(discussqicaixinxi,deSens);
        return R.ok().put("data", discussqicaixinxi);
    }




    /**
     * 后台保存
     */
    @RequestMapping("/save")
    @SysLog("新增器材信息评论表")
    public R save(@RequestBody DiscussqicaixinxiEntity discussqicaixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discussqicaixinxi);

        discussqicaixinxiService.insert(discussqicaixinxi);
        return R.ok().put("data",discussqicaixinxi.getId());
    }

    /**
     * 前台保存
     */
    @SysLog("新增器材信息评论表")
    @RequestMapping("/add")
    public R add(@RequestBody DiscussqicaixinxiEntity discussqicaixinxi, HttpServletRequest request){
    	//ValidatorUtils.validateEntity(discussqicaixinxi);

        discussqicaixinxiService.insert(discussqicaixinxi);
        return R.ok().put("data",discussqicaixinxi.getId());
    }



     /**
     * 获取用户密保
     */
    @RequestMapping("/security")
    @IgnoreAuth
    public R security(@RequestParam String username){
        DiscussqicaixinxiEntity discussqicaixinxi = discussqicaixinxiService.selectOne(new EntityWrapper<DiscussqicaixinxiEntity>().eq("", username));
        return R.ok().put("data", discussqicaixinxi);
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @IgnoreAuth
    public R update(@RequestBody DiscussqicaixinxiEntity discussqicaixinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discussqicaixinxi);
        //全部更新
        discussqicaixinxiService.updateById(discussqicaixinxi);
        return R.ok();
    }




    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除器材信息评论表")
    public R delete(@RequestBody Long[] ids){
        discussqicaixinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }

	/**
     * 前台智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,DiscussqicaixinxiEntity discussqicaixinxi, HttpServletRequest request,String pre){
        EntityWrapper<DiscussqicaixinxiEntity> ew = new EntityWrapper<DiscussqicaixinxiEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
        // 组装参数
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicktime");

        params.put("order", "desc");
		PageUtils page = discussqicaixinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discussqicaixinxi), params), params));
        return R.ok().put("data", page);
    }









}
