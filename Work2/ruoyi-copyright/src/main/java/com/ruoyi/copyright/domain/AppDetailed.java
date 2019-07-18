package com.ruoyi.copyright.domain;

import java.sql.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 清单表 app_detailed
 * 
 * @author ruoyi
 * @date 2019-07-05
 */
public class AppDetailed extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 清单表id */
	private Integer detailedId;
	/** 关联订单表id */
	private Integer indentId;
	/** 关联产品表id*/
	private Integer productId;
	/** 产品*/
	private String product;
	/** 数量 */
	private Integer amount;
	/** 发货时间 */
	private java.util.Date deliveryTime;
	/** 快递单号 */
	private String trackingNumber;

	public void setDetailedId(Integer detailedId) 
	{
		this.detailedId = detailedId;
	}

	public Integer getDetailedId() 
	{
		return detailedId;
	}
	public void setIndentId(Integer indentId) 
	{
		this.indentId = indentId;
	}

	public Integer getIndentId() 
	{
		return indentId;
	}
	public void setProductId(Integer productId) 
	{
		this.productId = productId;
	}

	public Integer getProductId() 
	{
		return productId;
	}
	
	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public void setAmount(Integer amount) 
	{
		this.amount = amount;
	}

	public Integer getAmount() 
	{
		return amount;
	}

    public java.util.Date getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(java.util.Date deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

	public String getTrackingNumber() {
		return trackingNumber;
	}

	public void setTrackingNumber(String trackingNumber) {
		this.trackingNumber = trackingNumber;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("detailedId", getDetailedId())
            .append("indentId", getIndentId())
            .append("productId", getProductId())
            .append("product", getProduct())
            .append("amount", getAmount())
            .append("deliveryTime", getDeliveryTime())
            .append("trackingNumber", getTrackingNumber())
            .toString();
    }
}
