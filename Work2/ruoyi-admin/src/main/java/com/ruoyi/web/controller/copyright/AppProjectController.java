package com.ruoyi.web.controller.copyright;

import java.util.List;

import org.apache.commons.io.FilenameUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.config.Global;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.copyright.domain.AppProject;
import com.ruoyi.copyright.service.IAppProjectService;
import com.ruoyi.framework.util.ShiroUtils;
import com.ruoyi.system.domain.SysUser;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.file.FileUploadUtils;
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
	
	/*@PostMapping("/certificateupload/{projectid}")
	@ResponseBody
	public AjaxResult certificateupload(@PathVariable("projectid") Integer projectid, MultipartFile phone)
	{
	   
	   System.err.println(projectid);
	   //System.err.println(phone.isEmpty());
	    try
	    {
	        if (!phone.isEmpty())
	        {        	
	        	System.err.println("getOriginalFilename:::"+phone.getOriginalFilename());
	        	System.err.println(phone.getContentType());
	        	System.err.println(phone.getResource());
	        	System.err.println(phone.getSize());
	            String uploadpath = FileUploadUtils.upload(Global.getAvatarPath(), phone)+",";
	            System.err.println(uploadpath);        
	            AppProject appproject = new AppProject();
	            appproject.setProjectId(projectid);
	            appproject.setCertificateScan(uploadpath);
	            if (appProjectService.updateAppProjectById(appproject) > 0)
	            {
	                return success();
	            }
	        }
	        return error();
	    }
	    catch (Exception e)
	    {

	        return error(e.getMessage());
	    }
	}*/
	
	
	@PostMapping("/certificateload/{projectid}")
	@ResponseBody
	public AjaxResult certificateload(@PathVariable("projectid") Integer projectid,MultipartFile file)
	{
	   System.err.println("证书扫描件");
	   System.err.println(projectid);
	   System.err.println(file.getSize());
	    try
	    {
	        if (!file.isEmpty())
	        {        	
	        	System.err.println("getOriginalFilename:::"+file.getOriginalFilename());
	        	System.err.println(file.getContentType());
	        	System.err.println(file.getResource());
	        	System.err.println(file.getSize());
	        	String extension = FilenameUtils.getExtension(file.getOriginalFilename());
	        	System.err.println(extension);
	            String uploadpath = FileUploadUtils.upload(Global.getAvatarPath(), file)+",";
	            System.err.println(uploadpath);        
	            AppProject appproject = new AppProject();
	            appproject.setProjectId(projectid);
	            appproject.setCertificateScan(uploadpath);
	            if (appProjectService.updateAppProjectById(appproject) > 0)
	            {       System.err.println("成功");
	                return success();
	            }
	        }
	        return error();
	    }
	    catch (Exception e)
	    {

	        return error(e.getMessage());
	    }
	}

@PostMapping("/fileupload/{projectid}")
@ResponseBody
public AjaxResult fileupload(@PathVariable("projectid") Integer projectid,MultipartFile file)
{
   System.err.println("文档");
   System.err.println(projectid);
   System.err.println(file.getSize());
    try
    {
        if (!file.isEmpty())
        {        	
        	System.err.println("getOriginalFilename:::"+file.getOriginalFilename());
        	System.err.println(file.getContentType());
        	System.err.println(file.getResource());
        	System.err.println(file.getSize());
        	String extension = FilenameUtils.getExtension(file.getOriginalFilename());
        	System.err.println(extension);
            String uploadpath = FileUploadUtils.upload(Global.getUploadPath(), file)+",";
            System.err.println(uploadpath);        
            AppProject appproject = new AppProject();
            appproject.setProjectId(projectid);
            appproject.setFile(uploadpath);
            if (appProjectService.updateAppProjectById(appproject) > 0)
            {     System.err.println("成功");   
                return success();
            }
        }
        return error();
    }
    catch (Exception e)
    {

        return error(e.getMessage());
    }
}

}
/*String recordPicture = "";
String im[]=img.split("/");
String im2[]=img2.split("/");
String im3[]=img3.split("/");
if (im[im.length-1].contains("jpg")) {
  recordPicture+=im[im.length-4]+"/"+im[im.length-3]+"/"+im[im.length-2]+"/"+im[im.length-1]+",";
}
if (im2[im2.length-1].contains("jpg")) {
  recordPicture+=im2[im2.length-4]+"/"+im2[im2.length-3]+"/"+im2[im2.length-2]+"/"+im2[im2.length-1]+",";
}
if (im3[im3.length-1].contains("jpg")) {
  recordPicture+=im3[im3.length-4]+"/"+im3[im3.length-3]+"/"+im3[im3.length-2]+"/"+im3[im3.length-1]+",";
}

if (file != null) {
  recordPicture += FileUploadUtils.upload(Global.getAvatarPath(), file) + ",";
}
if (file2 != null) {
  recordPicture += FileUploadUtils.upload(Global.getAvatarPath(), file2) + ",";
}
if (file3 != null) {
  recordPicture += FileUploadUtils.upload(Global.getAvatarPath(), file3);
}
SysUser user2=new SysUser();
user2=userMapper.selectUserById(user.getUserId());
user2.setRecordPicture(recordPicture);
user2.setUserId(user.getUserId());
return  userMapper.updateUser(user2);*/