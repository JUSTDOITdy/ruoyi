package com.ruoyi.copyright.service;

import com.ruoyi.copyright.domain.AppProject;
import java.util.List;

/**
 * 项目 服务层
 * 
 * @author ruoyi
 * @date 2019-08-23
 */
public interface IAppProjectService 
{
	/**
     * 查询项目信息
     * 
     * @param projectId 项目ID
     * @return 项目信息
     */
	public AppProject selectAppProjectById(Integer projectId);
	
	/**
     * 查询项目列表
     * 
     * @param appProject 项目信息
     * @return 项目集合
     */
	public List<AppProject> selectAppProjectList(AppProject appProject);
	
	/**
     * 新增项目
     * 
     * @param appProject 项目信息
     * @return 结果
     */
	public int insertAppProject(AppProject appProject);
	
	/**
     * 修改项目
     * 
     * @param appProject 项目信息
     * @return 结果
     */
	public int updateAppProject(AppProject appProject);
		
	/**
     * 删除项目信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppProjectByIds(String ids);
	
}
