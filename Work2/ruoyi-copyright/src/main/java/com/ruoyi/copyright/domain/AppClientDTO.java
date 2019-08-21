package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;


/**
 * 客户表 app_client
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
public class AppClientDTO 
{
	
	/** 客户类型【1：公司 2：个人】 */
	private String type;
	/** 公司名称 */
	private String clientName;	
	/** 单位地址 */
	private String site;
	/** 客户种类 */
	private String clientKind;
	/** 手机 */
	private String phone;



/*	public AppClientDTO(String type, String clientName, String site, String clientKind,String phone) {
		// TODO Auto-generated constructor stub
		
	}*/
	public AppClientDTO(String type, String clientName, String site, String clientKind, String phone) {
	this.type = type;
	this.clientName = clientName;
	this.site = site;
	this.clientKind = clientKind;
	this.phone = phone;
    }
	public void setType(String type) 
	{
		this.type = type;
	}



	public String getType() 
	{
		return type;
	}
	public void setclientName(String clientName) 
	{
		this.clientName = clientName;
	}

	public String getclientName() 
	{
		return clientName;
	}


	public void setSite(String site) 
	{
		this.site = site;
	}

	public String getSite() 
	{
		return site;
	}
	public void setClientKind(String clientKind) 
	{
		this.clientKind = clientKind;
	}

	public String getClientKind() 
	{
		return clientKind;
	}
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("type", getType())
            .append("clientName", getclientName())
            .append("site", getSite())
            .append("clientKind", getClientKind())
            .append("phone", getPhone())
            .toString();
    }
}
