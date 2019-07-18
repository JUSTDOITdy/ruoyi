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
import com.ruoyi.copyright.domain.AppLinkman;
import com.ruoyi.copyright.service.IAppLinkmanService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 联系人 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
@Controller
@RequestMapping("/copyright/appLinkman")
public class AppLinkmanController extends BaseController
{
    private String prefix = "copyright/appLinkman";
	
	@Autowired
	private IAppLinkmanService appLinkmanService;
	
	@RequiresPermissions("copyright:appLinkman:view")
	@GetMapping()
	public String appLinkman()
	{
	    return prefix + "/appLinkman";
	}
	
	/**
	 * 查询联系人列表
	 */
	@RequiresPermissions("copyright:appLinkman:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppLinkman appLinkman)
	{
		startPage();
        List<AppLinkman> list = appLinkmanService.selectAppLinkmanList(appLinkman);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出联系人列表
	 */
	@RequiresPermissions("copyright:appLinkman:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppLinkman appLinkman)
    {
    	List<AppLinkman> list = appLinkmanService.selectAppLinkmanList(appLinkman);
        ExcelUtil<AppLinkman> util = new ExcelUtil<AppLinkman>(AppLinkman.class);
        return util.exportExcel(list, "appLinkman");
    }
	
	/**
	 * 新增联系人
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存联系人
	 */
	@RequiresPermissions("copyright:appLinkman:add")
	@Log(title = "联系人", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppLinkman appLinkman)
	{		
		return toAjax(appLinkmanService.insertAppLinkman(appLinkman));
	}

	/**
	 * 修改联系人
	 */
	@GetMapping("/detail/{linkmanId}")
	public String detail(@PathVariable("linkmanId") Integer linkmanId, ModelMap mmap)
	{
		AppLinkman appLinkman = appLinkmanService.selectAppLinkmanById(linkmanId);
		mmap.put("appLinkman", appLinkman);
		return prefix + "/detail";
	}
	/**
	 * 修改联系人
	 */
	@GetMapping("/edit/{linkmanId}")
	public String edit(@PathVariable("linkmanId") Integer linkmanId, ModelMap mmap)
	{
		AppLinkman appLinkman = appLinkmanService.selectAppLinkmanById(linkmanId);
		mmap.put("appLinkman", appLinkman);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存联系人
	 */
	@RequiresPermissions("copyright:appLinkman:edit")
	@Log(title = "联系人", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppLinkman appLinkman)
	{		
		return toAjax(appLinkmanService.updateAppLinkman(appLinkman));
	}
	
	/**
	 * 删除联系人
	 */
	@RequiresPermissions("copyright:appLinkman:remove")
	@Log(title = "联系人", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appLinkmanService.deleteAppLinkmanByIds(ids));
	}
	
}
