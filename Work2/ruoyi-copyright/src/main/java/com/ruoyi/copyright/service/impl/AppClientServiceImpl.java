package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppClientMapper;
import com.ruoyi.copyright.mapper.AppLinkmanMapper;
import com.ruoyi.copyright.domain.AppClient;
import com.ruoyi.copyright.domain.AppDetailed;
import com.ruoyi.copyright.domain.AppLinkman;
import com.ruoyi.copyright.service.IAppClientService;
import com.ruoyi.common.core.text.Convert;

/**
 * 客户 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
@Service
public class AppClientServiceImpl implements IAppClientService 
{
	@Autowired
	private AppClientMapper appClientMapper;
	@Autowired
	private AppLinkmanMapper appLinkmanMapper;

	/**
     * 查询客户信息
     * 
     * @param clientId 客户ID
     * @return 客户信息
     */
    @Override
	public AppClient selectAppClientById(Integer clientId)
	{
    	
	    return appClientMapper.selectAppClientById(clientId);
	}
    /**
	 * 根据编号查询客户信息
	 * 
	 * @param clientId 客户ID
	 * @return 客户信息
	 */
	public AppClient selectAppClientByCode(String code){
		
		return appClientMapper.selectAppClientByCode(code);
	}
	/**
     * 查询客户列表
     * 
     * @param appClient 客户信息
     * @return 客户集合
     */
	@Override
	public List<AppClient> selectAppClientList(AppClient appClient)
	{
	    return appClientMapper.selectAppClientList(appClient);
	}
	
    /**
     * 新增客户
     * 
     * @param appClient 客户信息
     * @return 结果
     */
	@Override
	public int insertAppClient(AppClient appClient)
	{
		int su=appClientMapper.insertAppClient(appClient);
		if (appClient.getType()=="2") {
			AppLinkman appLinkman=new AppLinkman();
			
		}
	    return su;
	}
	
	/**
     * 修改客户
     * 
     * @param appClient 客户信息
     * @return 结果
     */
	@Override
	public int updateAppClient(AppClient appClient)
	{
	    return appClientMapper.updateAppClient(appClient);
	}

	/**
     * 删除客户对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppClientByIds(String ids)
	{
		return appClientMapper.deleteAppClientByIds(Convert.toStrArray(ids));
	}
	@Override
	public List<AppClient> selectByLike(String search) {
		// TODO Auto-generated method stub
		 return appClientMapper.selectByLike(search);
	}
	
	
}
