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
import com.ruoyi.copyright.domain.AppProduct;
import com.ruoyi.copyright.service.IAppProductService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 产品 信息操作处理
 * 
 * @author 
 * @date 2019-07-02
 */
@Controller
@RequestMapping("/copyright/appProduct")
public class AppProductController extends BaseController
{
    private String prefix = "copyright/appProduct";
	
	@Autowired
	private IAppProductService appProductService;
	
	@RequiresPermissions("copyright:appProduct:view")
	@GetMapping()
	public String appProduct()
	{
	    return prefix + "/appProduct";
	}
	
	/**
	 * 查询产品列表
	 */
	@RequiresPermissions("copyright:appProduct:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppProduct appProduct)
	{
		startPage();
        List<AppProduct> list = appProductService.selectAppProductList(appProduct);
		return getDataTable(list);
	}
	
	
	/**
	 * 导出产品列表
	 */
	@RequiresPermissions("copyright:appProduct:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppProduct appProduct)
    {
    	List<AppProduct> list = appProductService.selectAppProductList(appProduct);
        ExcelUtil<AppProduct> util = new ExcelUtil<AppProduct>(AppProduct.class);
        return util.exportExcel(list, "appProduct");
    }
	
	/**
	 * 新增产品
	 */
	@GetMapping("/add")
	public String add(ModelMap map)
	{
		List<AppProduct> appProducts   =	appProductService.selectAppProductList(new AppProduct());
		map.put("pro",appProducts );
		//System.out.println(appProducts);
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存产品
	 */
	@RequiresPermissions("copyright:appProduct:add")
	@Log(title = "产品", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppProduct appProduct)
	{		
		return toAjax(appProductService.insertAppProduct(appProduct));
	}

	/**
	 * 修改产品
	 */
	@GetMapping("/edit/{productId}")
	public String edit(@PathVariable("productId") Integer productId, ModelMap mmap)
	{
		AppProduct appProduct = appProductService.selectAppProductById(productId);
		mmap.put("appProduct", appProduct);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存产品
	 */
	@RequiresPermissions("copyright:appProduct:edit")
	@Log(title = "产品", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppProduct appProduct)
	{		
		return toAjax(appProductService.updateAppProduct(appProduct));
	}
	
	/**
	 * 删除产品
	 */
	@RequiresPermissions("copyright:appProduct:remove")
	@Log(title = "产品", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appProductService.deleteAppProductByIds(ids));
	}
	
}
