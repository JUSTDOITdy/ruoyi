package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppProductTypeMapper;
import com.ruoyi.copyright.domain.AppProductType;
import com.ruoyi.copyright.service.IAppProductTypeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 产品类型 服务层实现
 * 
 * @author ruoyi
 * @date 2019-08-22
 */
@Service
public class AppProductTypeServiceImpl implements IAppProductTypeService 
{
	@Autowired
	private AppProductTypeMapper appProductTypeMapper;

	/**
     * 查询产品类型信息
     * 
     * @param productTypeId 产品类型ID
     * @return 产品类型信息
     */
    @Override
	public AppProductType selectAppProductTypeById(Integer productTypeId)
	{
	    return appProductTypeMapper.selectAppProductTypeById(productTypeId);
	}
	
	/**
     * 查询产品类型列表
     * 
     * @param appProductType 产品类型信息
     * @return 产品类型集合
     */
	@Override
	public List<AppProductType> selectAppProductTypeList(AppProductType appProductType)
	{
	    return appProductTypeMapper.selectAppProductTypeList(appProductType);
	}
	
    /**
     * 新增产品类型
     * 
     * @param appProductType 产品类型信息
     * @return 结果
     */
	@Override
	public int insertAppProductType(AppProductType appProductType)
	{
	    return appProductTypeMapper.insertAppProductType(appProductType);
	}
	
	/**
     * 修改产品类型
     * 
     * @param appProductType 产品类型信息
     * @return 结果
     */
	@Override
	public int updateAppProductType(AppProductType appProductType)
	{
	    return appProductTypeMapper.updateAppProductType(appProductType);
	}

	/**
     * 删除产品类型对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppProductTypeByIds(String ids)
	{
		return appProductTypeMapper.deleteAppProductTypeByIds(Convert.toStrArray(ids));
	}
	
}
