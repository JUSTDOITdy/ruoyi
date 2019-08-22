package com.ruoyi.web.controller.copyright;

import java.util.ArrayList;
import java.util.Iterator;
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
import com.ruoyi.copyright.domain.AppClientDTO;
import com.ruoyi.copyright.domain.AppDetailed;
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
       /* Iterator<AppClient> iterator = list.iterator();
		while(iterator.hasNext()){
			AppClient i = (AppClient)iterator.next();
		    System.out.println(i);
		}*/
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
	 * @param search ajax提交上来的输入框的值
	 * @return  返回装有user对象的list的json字串
	 */
	@RequestMapping("/search")
	@ResponseBody
	public  AjaxResult search(String search){  //
		AjaxResult ajax = new AjaxResult();
		List<AppClient> listAppClient = appClientService.selectByLike(search);
		List<AppClientDTO> listAppClientDTO = new ArrayList<>();
		Iterator<AppClient> iterator = listAppClient.iterator();
		while(iterator.hasNext()){
			AppClient i = (AppClient)iterator.next();
			System.out.println("search");
		    System.out.println(i);
		}
		System.err.println(listAppClient);
		ajax.put("code", 200);
        ajax.put("value", listAppClientDTO);
		return ajax;
	}

	/**bootstrap-suggest这是一个基于bootstrap按钮式下拉菜单组件的搜索建议插件
	 * @param   bootstrap-suggest 查询客户列表
	 * @return  返回AjaxResult对象，自己点开AjaxResult查看
	 */
	@RequestMapping("/all")
	@ResponseBody
	public  AjaxResult all(AppClient appClient){ 
        AjaxResult ajax = new AjaxResult();
		List<AppClient> listAppClient = appClientService.selectAppClientList(appClient);
		List<AppClientDTO> listAppClientDTO = new ArrayList<>();
		Iterator<AppClient> iterator = listAppClient.iterator();
		while(iterator.hasNext()){
			AppClient i = (AppClient)iterator.next();
			listAppClientDTO.add(new AppClientDTO(i.getType(),i.getClientName(),i.getSite(),i.getClientKind(),i.getPhone()));
		    System.out.println(i);
		}
		ajax.put("code", 200);
        ajax.put("value", listAppClient);
        return ajax;
    }
	
	/**
	 * @param bootstrap-suggest 查询客户是公司的列表
	 * @return  返回AjaxResult对象，自己点开AjaxResult查看
	 */
	@RequestMapping("/company")
	@ResponseBody
	public  AjaxResult company(AppClient appClient){ 
        AjaxResult ajax = new AjaxResult();
		List<AppClient> listAppClient = appClientService.selectAppClientList(appClient);
		List<AppClientDTO> listAppClientDTO = new ArrayList<>();
		Iterator<AppClient> iterator = listAppClient.iterator();
		while(iterator.hasNext()){
			AppClient i = (AppClient)iterator.next();
			System.err.println(i.getType()+"");
			if("公司".equals(i.getType())){
				listAppClientDTO.add(new AppClientDTO(i.getType(),i.getClientName(),i.getSite(),i.getClientKind(),i.getPhone()));
		        System.out.println(i);
		    }	
			System.out.println("11111111111111");
		}
		ajax.put("code", 200);
        ajax.put("value", listAppClientDTO);
        return ajax;
    }
	/* public AjaxResult userModel()
	    {
	        AjaxResult ajax = new AjaxResult();

	        ajax.put("code", 200);
	        ajax.put("value", users);
	        return ajax;
	    }*/

	
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
