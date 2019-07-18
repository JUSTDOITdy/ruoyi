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
import com.ruoyi.copyright.domain.AppDetailed;
import com.ruoyi.copyright.domain.AppProduct;
import com.ruoyi.copyright.service.IAppDetailedService;
import com.ruoyi.copyright.service.IAppProductService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 清单 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-07-05
 */
@Controller
@RequestMapping("/copyright/appDetailed")
public class AppDetailedController extends BaseController
{
    private String prefix = "copyright/appDetailed";
	
	@Autowired
	private IAppDetailedService appDetailedService;
	@Autowired
	private IAppProductService appProductService;
	
	@RequiresPermissions("copyright:appDetailed:view")
	@GetMapping()
	public String appDetailed()
	{
	    return prefix + "/appDetailed";
	}
	
	
	
	/**
	 * 查询清单列表
	 */
	@RequiresPermissions("copyright:appDetailed:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppDetailed appDetailed)
	{
		startPage();
        List<AppDetailed> list = appDetailedService.selectAppDetailedList(appDetailed);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出清单列表
	 */
	@RequiresPermissions("copyright:appDetailed:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppDetailed appDetailed)
    {
    	List<AppDetailed> list = appDetailedService.selectAppDetailedList(appDetailed);
        ExcelUtil<AppDetailed> util = new ExcelUtil<AppDetailed>(AppDetailed.class);
        return util.exportExcel(list, "appDetailed");
    }
	
	/**
	 * 新增清单
	 */
	@GetMapping("/add")
	public String add(ModelMap map)
	{
		
		List<AppProduct> appProducts   =	appProductService.selectAppProductList(new AppProduct());
		map.put("pro",appProducts );
		System.out.println(appProducts);
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存清单
	 */
	@RequiresPermissions("copyright:appDetailed:add")
	@Log(title = "清单", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppDetailed appDetailed)
	{		
		return toAjax(appDetailedService.insertAppDetailed(appDetailed));
	}

	/**
	 * 修改清单
	 */
	@GetMapping("/edit/{detailedId}")
	public String edit(@PathVariable("detailedId") Integer detailedId, ModelMap mmap)
	{
		AppDetailed appDetailed = appDetailedService.selectAppDetailedById(detailedId);
		mmap.put("appDetailed", appDetailed);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存清单
	 */
	@RequiresPermissions("copyright:appDetailed:edit")
	@Log(title = "清单", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppDetailed appDetailed)
	{		
		return toAjax(appDetailedService.updateAppDetailed(appDetailed));
	}
	
	/**
	 * 删除清单
	 */
	@RequiresPermissions("copyright:appDetailed:remove")
	@Log(title = "清单", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appDetailedService.deleteAppDetailedByIds(ids));
	}
	
}
