package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppIndentMapper;
import com.ruoyi.copyright.domain.AppIndent;
import com.ruoyi.copyright.service.IAppIndentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 订单 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-03
 */
@Service
public class AppIndentServiceImpl implements IAppIndentService 
{
	@Autowired
	private AppIndentMapper appIndentMapper;

	/**
     * 查询订单信息
     * 
     * @param indentId 订单ID
     * @return 订单信息
     */
    @Override
	public AppIndent selectAppIndentById(Integer indentId)
	{
	    return appIndentMapper.selectAppIndentById(indentId);
	}
	
	/**
     * 查询订单列表
     * 
     * @param appIndent 订单信息
     * @return 订单集合
     */
	@Override
	public List<AppIndent> selectAppIndentList(AppIndent appIndent)
	{
	    return appIndentMapper.selectAppIndentList(appIndent);
	}
	
    /**
     * 新增订单
     * 
     * @param appIndent 订单信息
     * @return 结果
     */
	@Override
	public int insertAppIndent(AppIndent appIndent)
	{
	    return appIndentMapper.insertAppIndent(appIndent);
	}
	
	/**
     * 修改订单
     * 
     * @param appIndent 订单信息
     * @return 结果
     */
	@Override
	public int updateAppIndent(AppIndent appIndent)
	{
	    return appIndentMapper.updateAppIndent(appIndent);
	}

	/**
     * 删除订单对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppIndentByIds(String ids)
	{
		return appIndentMapper.deleteAppIndentByIds(Convert.toStrArray(ids));
	}
	
}
