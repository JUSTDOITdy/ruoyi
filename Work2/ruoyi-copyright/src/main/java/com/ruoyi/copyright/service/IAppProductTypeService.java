package com.ruoyi.copyright.service;

import com.ruoyi.copyright.domain.AppProductType;
import java.util.List;

/**
 * 产品类型 服务层
 * 
 * @author ruoyi
 * @date 2019-08-22
 */
public interface IAppProductTypeService 
{
	/**
     * 查询产品类型信息
     * 
     * @param productTypeId 产品类型ID
     * @return 产品类型信息
     */
	public AppProductType selectAppProductTypeById(Integer productTypeId);
	
	/**
     * 查询产品类型列表
     * 
     * @param appProductType 产品类型信息
     * @return 产品类型集合
     */
	public List<AppProductType> selectAppProductTypeList(AppProductType appProductType);
	
	/**
     * 新增产品类型
     * 
     * @param appProductType 产品类型信息
     * @return 结果
     */
	public int insertAppProductType(AppProductType appProductType);
	
	/**
     * 修改产品类型
     * 
     * @param appProductType 产品类型信息
     * @return 结果
     */
	public int updateAppProductType(AppProductType appProductType);
		
	/**
     * 删除产品类型信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppProductTypeByIds(String ids);
	
}
