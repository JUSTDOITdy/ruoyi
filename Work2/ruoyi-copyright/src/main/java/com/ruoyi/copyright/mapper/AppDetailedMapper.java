package com.ruoyi.copyright.mapper;

import com.ruoyi.copyright.domain.AppDetailed;
import java.util.List;	

/**
 * 清单 数据层
 * 
 * @author ruoyi
 * @date 2019-07-05
 */
public interface AppDetailedMapper 
{
	/**
     * 查询清单信息
     * 
     * @param detailedId 清单ID
     * @return 清单信息
     */
	public AppDetailed selectAppDetailedById(Integer detailedId);
	
	/**
     * 查询清单列表
     * 
     * @param appDetailed 清单信息
     * @return 清单集合
     */
	public List<AppDetailed> selectAppDetailedList(AppDetailed appDetailed);
	
	/**
     * 新增清单
     * 
     * @param appDetailed 清单信息
     * @return 结果
     */
	public int insertAppDetailed(AppDetailed appDetailed);
	
	/**
     * 修改清单
     * 
     * @param appDetailed 清单信息
     * @return 结果
     */
	public int updateAppDetailed(AppDetailed appDetailed);
	
	/**
     * 删除清单
     * 
     * @param detailedId 清单ID
     * @return 结果
     */
	public int deleteAppDetailedById(Integer detailedId);
	
	/**
     * 批量删除清单
     * 
     * @param detailedIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppDetailedByIds(String[] detailedIds);
	
}