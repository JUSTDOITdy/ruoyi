package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppDetailedMapper;
import com.ruoyi.copyright.domain.AppDetailed;
import com.ruoyi.copyright.service.IAppDetailedService;
import com.ruoyi.common.core.text.Convert;

/**
 * 清单 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-05
 */
@Service
public class AppDetailedServiceImpl implements IAppDetailedService 
{
	@Autowired
	private AppDetailedMapper appDetailedMapper;

	/**
     * 查询清单信息
     * 
     * @param detailedId 清单ID
     * @return 清单信息
     */
    @Override
	public AppDetailed selectAppDetailedById(Integer detailedId)
	{
	    return appDetailedMapper.selectAppDetailedById(detailedId);
	}
	
	/**
     * 查询清单列表
     * 
     * @param appDetailed 清单信息
     * @return 清单集合
     */
	@Override
	public List<AppDetailed> selectAppDetailedList(AppDetailed appDetailed)
	{
	    return appDetailedMapper.selectAppDetailedList(appDetailed);
	}
	
    /**
     * 新增清单
     * 
     * @param appDetailed 清单信息
     * @return 结果
     */
	@Override
	public int insertAppDetailed(AppDetailed appDetailed)
	{
	    return appDetailedMapper.insertAppDetailed(appDetailed);
	}
	
	/**
     * 修改清单
     * 
     * @param appDetailed 清单信息
     * @return 结果
     */
	@Override
	public int updateAppDetailed(AppDetailed appDetailed)
	{
	    return appDetailedMapper.updateAppDetailed(appDetailed);
	}

	/**
     * 删除清单对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppDetailedByIds(String ids)
	{
		return appDetailedMapper.deleteAppDetailedByIds(Convert.toStrArray(ids));
	}
	
}
