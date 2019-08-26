package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppProjectMapper;
import com.ruoyi.copyright.domain.AppProject;
import com.ruoyi.copyright.service.IAppProjectService;
import com.ruoyi.common.core.text.Convert;

/**
 * 项目 服务层实现
 * 
 * @author ruoyi
 * @date 2019-08-23
 */
@Service
public class AppProjectServiceImpl implements IAppProjectService 
{
	@Autowired
	private AppProjectMapper appProjectMapper;

	/**
     * 查询项目信息
     * 
     * @param projectId 项目ID
     * @return 项目信息
     */
    @Override
	public AppProject selectAppProjectById(Integer projectId)
	{
	    return appProjectMapper.selectAppProjectById(projectId);
	}
	
	/**
     * 查询项目列表
     * 
     * @param appProject 项目信息
     * @return 项目集合
     */
	@Override
	public List<AppProject> selectAppProjectList(AppProject appProject)
	{
	    return appProjectMapper.selectAppProjectList(appProject);
	}
	
    /**
     * 新增项目
     * 
     * @param appProject 项目信息
     * @return 结果
     */
	@Override
	public int insertAppProject(AppProject appProject)
	{
	    return appProjectMapper.insertAppProject(appProject);
	}
	
	/**
     * 修改项目
     * 
     * @param appProject 项目信息
     * @return 结果
     */
	@Override
	public int updateAppProject(AppProject appProject)
	{
	    return appProjectMapper.updateAppProject(appProject);
	}

	/**
     * 删除项目对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppProjectByIds(String ids)
	{
		return appProjectMapper.deleteAppProjectByIds(Convert.toStrArray(ids));
	}
	
}
