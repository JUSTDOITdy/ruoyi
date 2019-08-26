package com.ruoyi.copyright.mapper;

import com.ruoyi.copyright.domain.AppProject;
import java.util.List;	

/**
 * 项目 数据层
 * 
 * @author ruoyi
 * @date 2019-08-23
 */
public interface AppProjectMapper 
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
     * 删除项目
     * 
     * @param projectId 项目ID
     * @return 结果
     */
	public int deleteAppProjectById(Integer projectId);
	
	/**
     * 批量删除项目
     * 
     * @param projectIds 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppProjectByIds(String[] projectIds);
	
}