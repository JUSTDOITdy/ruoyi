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
import com.ruoyi.copyright.domain.AppProductType;
import com.ruoyi.copyright.service.IAppProductTypeService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 产品类型 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-08-22
 */
@Controller
@RequestMapping("/copyright/appProductType")
public class AppProductTypeController extends BaseController
{
    private String prefix = "copyright/appProductType";
	
	@Autowired
	private IAppProductTypeService appProductTypeService;
	
	@RequiresPermissions("copyright:appProductType:view")
	@GetMapping()
	public String appProductType()
	{
	    return prefix + "/appProductType";
	}
	
	/**
	 * 查询产品类型列表
	 */
	@RequiresPermissions("copyright:appProductType:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppProductType appProductType)
	{
		startPage();
        List<AppProductType> list = appProductTypeService.selectAppProductTypeList(appProductType);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出产品类型列表
	 */
	@RequiresPermissions("copyright:appProductType:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppProductType appProductType)
    {
    	List<AppProductType> list = appProductTypeService.selectAppProductTypeList(appProductType);
        ExcelUtil<AppProductType> util = new ExcelUtil<AppProductType>(AppProductType.class);
        return util.exportExcel(list, "appProductType");
    }
	
	/**
	 * 新增产品类型
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存产品类型
	 */
	@RequiresPermissions("copyright:appProductType:add")
	@Log(title = "产品类型", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppProductType appProductType)
	{		
		return toAjax(appProductTypeService.insertAppProductType(appProductType));
	}

	/**
	 * 修改产品类型
	 */
	@GetMapping("/edit/{productTypeId}")
	public String edit(@PathVariable("productTypeId") Integer productTypeId, ModelMap mmap)
	{
		AppProductType appProductType = appProductTypeService.selectAppProductTypeById(productTypeId);
		mmap.put("appProductType", appProductType);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存产品类型
	 */
	@RequiresPermissions("copyright:appProductType:edit")
	@Log(title = "产品类型", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppProductType appProductType)
	{		
		return toAjax(appProductTypeService.updateAppProductType(appProductType));
	}
	
	/**
	 * 删除产品类型
	 */
	@RequiresPermissions("copyright:appProductType:remove")
	@Log(title = "产品类型", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appProductTypeService.deleteAppProductTypeByIds(ids));
	}
	
}
