package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 产品类型表 app_product_type
 * 
 * @author ruoyi
 * @date 2019-08-22
 */
public class AppProductType extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer productTypeId;
	/** 产品类型 */
	private String productType;
	/** 价格 */
	private Integer price;

	public void setProductTypeId(Integer productTypeId) 
	{
		this.productTypeId = productTypeId;
	}

	public Integer getProductTypeId() 
	{
		return productTypeId;
	}
	public void setProductType(String productType) 
	{
		this.productType = productType;
	}

	public String getProductType() 
	{
		return productType;
	}
	public void setPrice(Integer price) 
	{
		this.price = price;
	}

	public Integer getPrice() 
	{
		return price;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("productTypeId", getProductTypeId())
            .append("productType", getProductType())
            .append("price", getPrice())
            .toString();
    }
}
