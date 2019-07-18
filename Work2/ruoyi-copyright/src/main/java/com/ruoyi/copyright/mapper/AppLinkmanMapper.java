package com.ruoyi.copyright.mapper;

import com.ruoyi.copyright.domain.AppLinkman;
import java.util.List;	

/**
 * 联系人 数据层
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
public interface AppLinkmanMapper 
{
	/**
     * 查询联系人信息
     * 
     * @param linkmanId 联系人ID
     * @return 联系人信息
     */
	public AppLinkman selectAppLinkmanById(Integer linkmanId);
	
	/**
     * 查询联系人列表
     * 
     * @param appLinkman 联系人信息
     * @return 联系人集合
     */
	public List<AppLinkman> selectAppLinkmanList(AppLinkman appLinkman);
	
	/**
     * 新增联系人
     * 
     * @param appLinkman 联系人信息
     * @return 结果
     */
	public int insertAppLinkman(AppLinkman appLinkman);
	
	/**
     * 修改联系人
     * 
     * @param appLinkman 联系人信息
     * @return 结果
     */
	public int updateAppLinkman(AppLinkman appLinkman);
	
	/**
     * 删除联系人
     * 
     * @param linkmanId 联系人ID
     * @return 结果
     */
	public int deleteAppLinkmanById(Integer linkmanId);
	
	/**
     * 批量删除联系人
     * 
     * @param linkmanIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppLinkmanByIds(String[] linkmanIds);
	
}