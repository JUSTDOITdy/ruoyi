package com.ruoyi.web.controller.copyright;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.copyright.domain.AppProject;
import com.ruoyi.copyright.service.IAppProjectService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 项目 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-08-23
 */
@Controller
@RequestMapping("/copyright/appProject")
public class AppProjectController extends BaseController
{
    private String prefix = "copyright/appProject";
	
	@Autowired
	private IAppProjectService appProjectService;
	
	@RequiresPermissions("copyright:appProject:view")
	@GetMapping()
	public String appProject()
	{
	    return prefix + "/appProject";
	}
	
	/**
	 * 查询项目列表
	 */
	@RequiresPermissions("copyright:appProject:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppProject appProject)
	{
		startPage();
        List<AppProject> list = appProjectService.selectAppProjectList(appProject);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出项目列表
	 */
	@RequiresPermissions("copyright:appProject:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppProject appProject)
    {
    	List<AppProject> list = appProjectService.selectAppProjectList(appProject);
        ExcelUtil<AppProject> util = new ExcelUtil<AppProject>(AppProject.class);
        return util.exportExcel(list, "appProject");
    }
	
	/**
	 * 新增项目
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存项目
	 */
	@RequiresPermissions("copyright:appProject:add")
	@Log(title = "项目", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppProject appProject)
	{		
		return toAjax(appProjectService.insertAppProject(appProject));
	}

	/**
	 * 修改项目
	 */
	@GetMapping("/edit/{projectId}")
	public String edit(@PathVariable("projectId") Integer projectId, ModelMap mmap)
	{
		AppProject appProject = appProjectService.selectAppProjectById(projectId);
		mmap.put("appProject", appProject);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存项目
	 */
	@RequiresPermissions("copyright:appProject:edit")
	@Log(title = "项目", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppProject appProject)
	{		
		return toAjax(appProjectService.updateAppProject(appProject));
	}
	
	/**
	 * 删除项目
	 */
	@RequiresPermissions("copyright:appProject:remove")
	@Log(title = "项目", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appProjectService.deleteAppProjectByIds(ids));
	}
	
}
