package com.ruoyi.copyright.service;

import com.ruoyi.copyright.domain.AppIndent;
import java.util.List;

/**
 * 订单 服务层
 * 
 * @author ruoyi
 * @date 2019-07-03
 */
public interface IAppIndentService 
{
	/**
     * 查询订单信息
     * 
     * @param indentId 订单ID
     * @return 订单信息
     */
	public AppIndent selectAppIndentById(Integer indentId);
	
	/**
     * 查询订单列表
     * 
     * @param appIndent 订单信息
     * @return 订单集合
     */
	public List<AppIndent> selectAppIndentList(AppIndent appIndent);
	
	/**
     * 新增订单
     * 
     * @param appIndent 订单信息
     * @return 结果
     */
	public int insertAppIndent(AppIndent appIndent);
	
	/**
     * 修改订单
     * 
     * @param appIndent 订单信息
     * @return 结果
     */
	public int updateAppIndent(AppIndent appIndent);
		
	/**
     * 删除订单信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppIndentByIds(String ids);
	
}
