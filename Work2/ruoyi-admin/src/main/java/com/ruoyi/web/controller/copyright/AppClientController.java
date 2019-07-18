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
import com.ruoyi.copyright.domain.AppClient;
import com.ruoyi.copyright.service.IAppClientService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;

/**
 * 客户 信息操作处理
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
@Controller
@RequestMapping("/copyright/appClient")
public class AppClientController extends BaseController
{
    private String prefix = "copyright/appClient";
	
	@Autowired
	private IAppClientService appClientService;
	
	@RequiresPermissions("copyright:appClient:view")
	@GetMapping()
	public String appClient()
	{
	    return prefix + "/appClient";
	}
	
	/**
	 * 查询客户列表
	 */
	@RequiresPermissions("copyright:appClient:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(AppClient appClient)
	{
		startPage();
        List<AppClient> list = appClientService.selectAppClientList(appClient);
		return getDataTable(list);
	}
	/**
	 * 查询客户列表
	 */
	
	@PostMapping("/byCode")
	@ResponseBody
	public AppClient byCode(String  code)
	{
		return appClientService.selectAppClientByCode(code);
	}
	
	
	/**
	 * 导出客户列表
	 */
	@RequiresPermissions("copyright:appClient:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(AppClient appClient)
    {
    	List<AppClient> list = appClientService.selectAppClientList(appClient);
        ExcelUtil<AppClient> util = new ExcelUtil<AppClient>(AppClient.class);
        return util.exportExcel(list, "appClient");
    }
	
	/**
	 * 新增客户
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存客户
	 */
	@RequiresPermissions("copyright:appClient:add")
	@Log(title = "客户", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(AppClient appClient)
	{		
		return toAjax(appClientService.insertAppClient(appClient));
	}

	/**
	 * 修改客户
	 */
	@GetMapping("/edit/{clientId}")
	public String edit(@PathVariable("clientId") Integer clientId, ModelMap mmap)
	{
		AppClient appClient = appClientService.selectAppClientById(clientId);
		mmap.put("appClient", appClient);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存客户
	 */
	@RequiresPermissions("copyright:appClient:edit")
	@Log(title = "客户", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(AppClient appClient)
	{		
		return toAjax(appClientService.updateAppClient(appClient));
	}
	
	/**
	 * 删除客户
	 */
	@RequiresPermissions("copyright:appClient:remove")
	@Log(title = "客户", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(appClientService.deleteAppClientByIds(ids));
	}
	
}
