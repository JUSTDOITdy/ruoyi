package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 项目表 app_project
 * 
 * @author ruoyi
 * @date 2019-08-23
 */
public class AppProject extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 项目id */
	private Integer projectId;
	/** 订单编号 */
	private String indentCode;
	/** 订单类型 */
	private String indentType;
	/** 流水号 */
	private String serialsNumber;
	/** 产品 */
	private String product;
	/** 申请人 */
	private String applicant;
	/** 作品名称 */
	private String worksName;
	/** 文档 */
	private String file;
	/** 递交日期 */
	private Date submitTime;
	/** 预计下证日期 */
	private Date expectTime;
	/**  */
	private String certificateScan;
	/** 状态 */
	private String state;

	public void setProjectId(Integer projectId) 
	{
		this.projectId = projectId;
	}

	public Integer getProjectId() 
	{
		return projectId;
	}
	public void setIndentCode(String indentCode) 
	{
		this.indentCode = indentCode;
	}

	public String getIndentCode() 
	{
		return indentCode;
	}
	public void setIndentType(String indentType) 
	{
		this.indentType = indentType;
	}

	public String getIndentType() 
	{
		return indentType;
	}
	public void setSerialsNumber(String serialsNumber) 
	{
		this.serialsNumber = serialsNumber;
	}

	public String getSerialsNumber() 
	{
		return serialsNumber;
	}
	public void setProduct(String product) 
	{
		this.product = product;
	}

	public String getProduct() 
	{
		return product;
	}
	public void setApplicant(String applicant) 
	{
		this.applicant = applicant;
	}

	public String getApplicant() 
	{
		return applicant;
	}
	public void setWorksName(String worksName) 
	{
		this.worksName = worksName;
	}

	public String getWorksName() 
	{
		return worksName;
	}
	public void setFile(String file) 
	{
		this.file = file;
	}

	public String getFile() 
	{
		return file;
	}
	public void setSubmitTime(Date submitTime) 
	{
		this.submitTime = submitTime;
	}

	public Date getSubmitTime() 
	{
		return submitTime;
	}
	public void setExpectTime(Date expectTime) 
	{
		this.expectTime = expectTime;
	}

	public Date getExpectTime() 
	{
		return expectTime;
	}
	public void setCertificateScan(String certificateScan) 
	{
		this.certificateScan = certificateScan;
	}

	public String getCertificateScan() 
	{
		return certificateScan;
	}
	public void setState(String state) 
	{
		this.state = state;
	}

	public String getState() 
	{
		return state;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("projectId", getProjectId())
            .append("indentCode", getIndentCode())
            .append("indentType", getIndentType())
            .append("serialsNumber", getSerialsNumber())
            .append("product", getProduct())
            .append("applicant", getApplicant())
            .append("worksName", getWorksName())
            .append("file", getFile())
            .append("submitTime", getSubmitTime())
            .append("expectTime", getExpectTime())
            .append("certificateScan", getCertificateScan())
            .append("state", getState())
            .toString();
    }
}
