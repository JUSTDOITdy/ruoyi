package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 客户表 app_client
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
public class AppClient extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 客户表id */
	private Integer clientId;
	/** 客户类型【1：公司 2：个人】 */
	private String type;
	/** 公司名称 */
	private String clientName;	
	/** 省份 */
	private String province;
	/** 城市 */
	private String city;
	/** 区域 */
	private String region;
	/** 单位地址 */
	private String site;
	/** 客户种类 */
	private String clientKind;
	/** 手机 */
	private String phone;
	/** 工作电话 */
	private String wordPhone;
	/** 编号 */
	private String code;
	/** 备注 */
	private String remarks;

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}


	public void setClientId(Integer clientId) 
	{
		this.clientId = clientId;
	}

	public Integer getClientId() 
	{
		return clientId;
	}
	public void setType(String type) 
	{
		this.type = type;
	}

	public String getType() 
	{
		return type;
	}

	public void setRegion(String region) 
	{
		this.region = region;
	}

	public String getRegion() 
	{
		return region;
	}
	public void setProvince(String province) 
	{
		this.province = province;
	}

	public String getProvince() 
	{
		return province;
	}
	public void setCity(String city) 
	{
		this.city = city;
	}

	public String getCity() 
	{
		return city;
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
	public void setWordPhone(String wordPhone) 
	{
		this.wordPhone = wordPhone;
	}

	public String getWordPhone() 
	{
		return wordPhone;
	}
	public void setCode(String code) 
	{
		this.code = code;
	}

	public String getCode() 
	{
		return code;
	}
	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("clientId", getClientId())
            .append("type", getType())
            .append("clientName", getClientName())
            .append("region", getRegion())
            .append("province", getProvince())
            .append("city", getCity())
            .append("site", getSite())
            .append("clientKind", getClientKind())
            .append("phone", getPhone())
            .append("wordPhone", getWordPhone())
            .append("code", getCode())
            .append("remarks", getRemarks())
            .toString();
    }
}
