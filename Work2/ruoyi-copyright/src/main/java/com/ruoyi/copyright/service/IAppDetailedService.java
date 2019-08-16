package com.ruoyi.copyright.service;

import com.ruoyi.copyright.domain.AppDetailed;
import java.util.List;

/**
 * 清单 服务层
 * 
 * @author ruoyi
 * @date 2019-07-05
 */
public interface IAppDetailedService 
{
	/**
     * 查询清单信息
     * 
     * @param detailedId 清单ID
     * @return 清单信息
     */
	public AppDetailed selectAppDetailedById(Integer detailedId);
	public List<AppDetailed> selectAppDetailedByCode(String coded);
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
     * 删除清单信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppDetailedByIds(String ids);
	
}
