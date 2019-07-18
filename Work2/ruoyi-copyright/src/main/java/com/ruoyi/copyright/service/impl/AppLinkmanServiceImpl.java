package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppLinkmanMapper;
import com.ruoyi.copyright.domain.AppLinkman;
import com.ruoyi.copyright.service.IAppLinkmanService;
import com.ruoyi.common.core.text.Convert;

/**
 * 联系人 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
@Service
public class AppLinkmanServiceImpl implements IAppLinkmanService 
{
	@Autowired
	private AppLinkmanMapper appLinkmanMapper;

	/**
     * 查询联系人信息
     * 
     * @param linkmanId 联系人ID
     * @return 联系人信息
     */
    @Override
	public AppLinkman selectAppLinkmanById(Integer linkmanId)
	{
	    return appLinkmanMapper.selectAppLinkmanById(linkmanId);
	}
	
	/**
     * 查询联系人列表
     * 
     * @param appLinkman 联系人信息
     * @return 联系人集合
     */
	@Override
	public List<AppLinkman> selectAppLinkmanList(AppLinkman appLinkman)
	{
	    return appLinkmanMapper.selectAppLinkmanList(appLinkman);
	}
	
    /**
     * 新增联系人
     * 
     * @param appLinkman 联系人信息
     * @return 结果
     */
	@Override
	public int insertAppLinkman(AppLinkman appLinkman)
	{
	    return appLinkmanMapper.insertAppLinkman(appLinkman);
	}
	
	/**
     * 修改联系人
     * 
     * @param appLinkman 联系人信息
     * @return 结果
     */
	@Override
	public int updateAppLinkman(AppLinkman appLinkman)
	{
	    return appLinkmanMapper.updateAppLinkman(appLinkman);
	}

	/**
     * 删除联系人对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppLinkmanByIds(String ids)
	{
		return appLinkmanMapper.deleteAppLinkmanByIds(Convert.toStrArray(ids));
	}
	
}
