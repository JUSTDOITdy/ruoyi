package com.ruoyi.copyright.service;

import com.ruoyi.copyright.domain.AppClient;
import java.util.List;

/**
 * 客户 服务层
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
public interface IAppClientService 
{
	/**
     * 查询客户信息
     * 
     * @param clientId 客户ID
     * @return 客户信息
     */
	public AppClient selectAppClientById(Integer clientId);
	/**
	 * 根据编号查询客户信息
	 * 
	 * @param clientId 客户ID
	 * @return 客户信息
	 */
	public AppClient selectAppClientByCode(String code);
	/**
     * 查询客户列表
     * 
     * @param appClient 客户信息
     * @return 客户集合
     */
	public List<AppClient> selectAppClientList(AppClient appClient);
	
	/**
     * 新增客户
     * 
     * @param appClient 客户信息
     * @return 结果
     */
	public int insertAppClient(AppClient appClient);
	
	/**
     * 修改客户
     * 
     * @param appClient 客户信息
     * @return 结果
     */
	public int updateAppClient(AppClient appClient);
		
	/**
     * 删除客户信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppClientByIds(String ids);
	
}
