package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 产品表 app_product
 * 
 * @author ruoyi
 * @date 2019-07-02
 */
public class AppProduct extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 产品表id */
	private Integer productId;
	/** 类别 */
	private String type;
	/** 产品名称 */
	private String workdays;
	/** 销售价 */
	private String salesPrice;
	/** 采购价 */
	private String purchasePrice;
	/** 折扣 */
	private String discount;
	/** 供应商公司名 */
	private String supplierCompany;
	/** 联系人姓名 */
	private String supplierName;
	/** 联系人电话 */
	private String supplierPhone;
	/** 联系人qq */
	private String supplierQq;
	/** 申报奖励 */
	private String award;
	/** 发票【0：无票 1：有票】 */
	private String invoice;
	/** 有效【0：关闭 1：有效】 */
	private String valid;
	/** 顺序 */
	private Integer rank;

	public void setProductId(Integer productId) 
	{
		this.productId = productId;
	}

	public Integer getProductId() 
	{
		return productId;
	}
	public void setType(String type) 
	{
		this.type = type;
	}

	public String getType() 
	{
		return type;
	}
	
	public String getWorkdays() {
		return workdays;
	}

	public void setWorkdays(String workdays) {
		this.workdays = workdays;
	}

	public void setSalesPrice(String salesPrice) 
	{
		this.salesPrice = salesPrice;
	}

	public String getSalesPrice() 
	{
		return salesPrice;
	}
	public void setPurchasePrice(String purchasePrice) 
	{
		this.purchasePrice = purchasePrice;
	}

	public String getPurchasePrice() 
	{
		return purchasePrice;
	}
	public void setDiscount(String discount) 
	{
		this.discount = discount;
	}

	public String getDiscount() 
	{
		return discount;
	}
	public void setSupplierCompany(String supplierCompany) 
	{
		this.supplierCompany = supplierCompany;
	}

	public String getSupplierCompany() 
	{
		return supplierCompany;
	}
	public void setSupplierName(String supplierName) 
	{
		this.supplierName = supplierName;
	}

	public String getSupplierName() 
	{
		return supplierName;
	}
	public void setSupplierPhone(String supplierPhone) 
	{
		this.supplierPhone = supplierPhone;
	}

	public String getSupplierPhone() 
	{
		return supplierPhone;
	}
	public void setSupplierQq(String supplierQq) 
	{
		this.supplierQq = supplierQq;
	}

	public String getSupplierQq() 
	{
		return supplierQq;
	}
	public void setAward(String award) 
	{
		this.award = award;
	}

	public String getAward() 
	{
		return award;
	}
	public void setInvoice(String invoice) 
	{
		this.invoice = invoice;
	}

	public String getInvoice() 
	{
		return invoice;
	}
	public void setValid(String valid) 
	{
		this.valid = valid;
	}

	public String getValid() 
	{
		return valid;
	}
	public void setRank(Integer rank) 
	{
		this.rank = rank;
	}

	public Integer getRank() 
	{
		return rank;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("productId", getProductId())
            .append("type", getType())
            .append("workdays", getWorkdays())
            .append("salesPrice", getSalesPrice())
            .append("purchasePrice", getPurchasePrice())
            .append("discount", getDiscount())
            .append("supplierCompany", getSupplierCompany())
            .append("supplierName", getSupplierName())
            .append("supplierPhone", getSupplierPhone())
            .append("supplierQq", getSupplierQq())
            .append("award", getAward())
            .append("invoice", getInvoice())
            .append("remark", getRemark())
            .append("valid", getValid())
            .append("rank", getRank())
            .toString();
    }
}
