package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 联系人表 app_linkman
 * 
 * @author ruoyi
 * @date 2019-07-04
 */
public class AppLinkman extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 联系人id */
	private Integer linkmanId;
	/** 关联客户id */
	private Integer clientId;
	/** 姓名 */
	private String name;
	/** 性别 */
	private String sex;
	/** 证件类型 */
	private String certificateType;
	/** 证件号码 */
	private String certificateCode;
	/** 称谓 */
	private String alias;
	/** 部门 */
	private String dept;
	/** 职务 */
	private String post;
	/** 手机 */
	private String phone;
	/** 钉钉号 */
	private String dingding;
	/** 工作电话 */
	private String workPhone;
	/** 传真 */
	private String fax;
	/** 邮箱 */
	private String email;
	/** 微信号 */
	private String wechat;
	/** QQ */
	private String qQ;
	/** 旺旺号 */
	private String aliwangwang;
	/** 邮编 */
	private String postcode;
	/** 住址 */
	private String address;
	/** 创建时间 */
	private Date creationTime;
	/** 生日 */
	private Date birthday;
	/**客户表*/
	private AppClient client;
	
	
	

	public String getqQ() {
		return qQ;
	}

	public void setqQ(String qQ) {
		this.qQ = qQ;
	}

	public AppClient getClient() {
		return client;
	}

	public void setClient(AppClient client) {
		this.client = client;
	}

	public void setLinkmanId(Integer linkmanId) 
	{
		this.linkmanId = linkmanId;
	}

	public Integer getLinkmanId() 
	{
		return linkmanId;
	}
	public void setClientId(Integer clientId) 
	{
		this.clientId = clientId;
	}

	public Integer getClientId() 
	{
		return clientId;
	}
	public void setName(String name) 
	{
		this.name = name;
	}

	public String getName() 
	{
		return name;
	}
	public void setSex(String sex) 
	{
		this.sex = sex;
	}

	public String getSex() 
	{
		return sex;
	}
	public void setCertificateType(String certificateType) 
	{
		this.certificateType = certificateType;
	}

	public String getCertificateType() 
	{
		return certificateType;
	}
	public void setCertificateCode(String certificateCode) 
	{
		this.certificateCode = certificateCode;
	}

	public String getCertificateCode() 
	{
		return certificateCode;
	}
	public void setAlias(String alias) 
	{
		this.alias = alias;
	}

	public String getAlias() 
	{
		return alias;
	}
	public void setDept(String dept) 
	{
		this.dept = dept;
	}

	public String getDept() 
	{
		return dept;
	}
	public void setPost(String post) 
	{
		this.post = post;
	}

	public String getPost() 
	{
		return post;
	}
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
	}
	public void setDingding(String dingding) 
	{
		this.dingding = dingding;
	}

	public String getDingding() 
	{
		return dingding;
	}
	public void setWorkPhone(String workPhone) 
	{
		this.workPhone = workPhone;
	}

	public String getWorkPhone() 
	{
		return workPhone;
	}
	public void setFax(String fax) 
	{
		this.fax = fax;
	}

	public String getFax() 
	{
		return fax;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getEmail() 
	{
		return email;
	}
	public void setWechat(String wechat) 
	{
		this.wechat = wechat;
	}

	public String getWechat() 
	{
		return wechat;
	}
	public void setQQ(String qQ) 
	{
		this.qQ = qQ;
	}

	public String getQQ() 
	{
		return qQ;
	}
	public void setAliwangwang(String aliwangwang) 
	{
		this.aliwangwang = aliwangwang;
	}

	public String getAliwangwang() 
	{
		return aliwangwang;
	}
	public void setPostcode(String postcode) 
	{
		this.postcode = postcode;
	}

	public String getPostcode() 
	{
		return postcode;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}

	public String getAddress() 
	{
		return address;
	}
	public void setCreationTime(Date creationTime) 
	{
		this.creationTime = creationTime;
	}

	public Date getCreationTime() 
	{
		return creationTime;
	}
	public void setBirthday(Date birthday) 
	{
		this.birthday = birthday;
	}

	public Date getBirthday() 
	{
		return birthday;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("linkmanId", getLinkmanId())
            .append("clientId", getClientId())
            .append("name", getName())
            .append("sex", getSex())
            .append("certificateType", getCertificateType())
            .append("certificateCode", getCertificateCode())
            .append("alias", getAlias())
            .append("dept", getDept())
            .append("post", getPost())
            .append("phone", getPhone())
            .append("dingding", getDingding())
            .append("workPhone", getWorkPhone())
            .append("fax", getFax())
            .append("email", getEmail())
            .append("wechat", getWechat())
            .append("qQ", getQQ())
            .append("aliwangwang", getAliwangwang())
            .append("postcode", getPostcode())
            .append("address", getAddress())
            .append("remark", getRemark())
            .append("creationTime", getCreationTime())
            .append("birthday", getBirthday())
            .toString();
    }
}
