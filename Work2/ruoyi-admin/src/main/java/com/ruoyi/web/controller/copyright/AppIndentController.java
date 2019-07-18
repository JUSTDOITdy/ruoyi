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
import com.ruoyi.copyright.domain.AppIndent;
import com.ruoyi.copyright.domain.AppProduct;
import com.ruoyi.copyright.service.IAppIndentService;
import com.ruoyi.copyright.service.IAppProductService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 订单 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-07-03
 */
@Controller
@RequestMapping("/copyright/appIndent")
public class AppIndentController extends BaseController
{
    private String prefix = "copyright/appIndent";
	
	@Autowired
	private IAppIndentService appIndentService;
	@Autowired
	private IAppProductService appProductService;
	
	@RequiresPermissions("copyright:appIndent:view")
	@GetMapping()
	public String appIndent()
	{
	    return prefix + "/appIndent";
	}
	
	/**
	 * 查询订单列表
	 */
	@RequiresPermissions("copyright:appIndent:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppIndent appIndent)
	{
		startPage();
		//System.err.println(appIndent.getIndentType());
        List<AppIndent> list = appIndentService.selectAppIndentList(appIndent);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出订单列表
	 */
	@RequiresPermissions("copyright:appIndent:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppIndent appIndent)
    {
    	List<AppIndent> list = appIndentService.selectAppIndentList(appIndent);
        ExcelUtil<AppIndent> util = new ExcelUtil<AppIndent>(AppIndent.class);
        return util.exportExcel(list, "appIndent");
    }
	
	/**
	 * 新增订单
	 */
	@GetMapping("/add")
	public String add(ModelMap map)
	{
		
		/*List<AppProduct> appProducts   =	appProductService.selectAppProductList(new AppProduct());
		map.put("pro",appProducts );
		System.out.println(appProducts);
	    return prefix + "/add";*/
		
		List<AppProduct> appProducts   =	appProductService.selectAppProductList(new AppProduct());
		map.put("pro",appProducts );
		System.out.println(appProducts);
		
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存订单
	 */
	@RequiresPermissions("copyright:appIndent:add")
	@Log(title = "订单", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppIndent appIndent)
	{		
		return toAjax(appIndentService.insertAppIndent(appIndent));
	}

	/**
	 * 修改订单
	 */
	@GetMapping("/edit/{indentId}")
	public String edit(@PathVariable("indentId") Integer indentId, ModelMap mmap)
	{
		AppIndent appIndent = appIndentService.selectAppIndentById(indentId);
		mmap.put("appIndent", appIndent);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存订单
	 */
	@RequiresPermissions("copyright:appIndent:edit")
	@Log(title = "订单", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppIndent appIndent)
	{		
		return toAjax(appIndentService.updateAppIndent(appIndent));
	}
	
	/**
	 * 删除订单
	 */
	@RequiresPermissions("copyright:appIndent:remove")
	@Log(title = "订单", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appIndentService.deleteAppIndentByIds(ids));
	}
	
}
