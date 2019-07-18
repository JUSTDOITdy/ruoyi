package com.ruoyi.copyright.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 订单表 app_indent
 * 
 * @author ruoyi
 * @date 2019-07-03
 */
public class AppIndent extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 订单表id */
	private Integer indentId;
	
	/** 订单类型 */
	private String indentType;
	
	/** 关联产品id */
	private String product;
	
	/** 订单编号 */
	private String code;
	
	/** 关联客户id */
	private Integer clientId;
	/** 订购日期 */
	private Date purchaseDate;
	/** 订单金额 */
	private Integer orderAmount;
	/** 折扣*/
	private String discount;
	/** 材料【0：有材料 1：有材料】 */
	private String materials;
	
	/** 发票【0：无票 1：普票 2专票】 */
	private String invoice;
	
	/** 订单状态 */
	private String orderStatus;
	/** 发货时间 */
	private Date deliveryTime;
	/** 快递单号 */
	private String trackingNumber;
	/** 服务情况 */
	private String serviceCondition;
	/** 创建人 */
	private String creator;
	/** 创建时间 */
	private Date creationTime;

	public void setIndentId(Integer indentId) 
	{
		this.indentId = indentId;
	}

	public Integer getIndentId() 
	{
		return indentId;
	}
	
	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public void setCode(String code) 
	{
		this.code = code;
	}

	public String getCode() 
	{
		return code;
	}
	public void setClientId(Integer clientId) 
	{
		this.clientId = clientId;
	}

	public Integer getClientId() 
	{
		return clientId;
	}
	public void setPurchaseDate(Date purchaseDate) 
	{
		this.purchaseDate = purchaseDate;
	}

	public Date getPurchaseDate() 
	{
		return purchaseDate;
	}
	public void setOrderAmount(Integer orderAmount) 
	{
		this.orderAmount = orderAmount;
	}

	public Integer getOrderAmount() 
	{
		return orderAmount;
	}
	public void setMaterials(String materials) 
	{
		this.materials = materials;
	}

	public String getMaterials() 
	{
		return materials;
	}
	public void setOrderStatus(String orderStatus) 
	{
		this.orderStatus = orderStatus;
	}

	public String getOrderStatus() 
	{
		return orderStatus;
	}
	public void setDeliveryTime(Date deliveryTime) 
	{
		this.deliveryTime = deliveryTime;
	}

	public Date getDeliveryTime() 
	{
		return deliveryTime;
	}
	public void setTrackingNumber(String trackingNumber) 
	{
		this.trackingNumber = trackingNumber;
	}

	public String getTrackingNumber() 
	{
		return trackingNumber;
	}
	public void setServiceCondition(String serviceCondition) 
	{
		this.serviceCondition = serviceCondition;
	}

	public String getServiceCondition() 
	{
		return serviceCondition;
	}
	public void setCreator(String creator) 
	{
		this.creator = creator;
	}

	public String getCreator() 
	{
		return creator;
	}
	public void setCreationTime(Date creationTime) 
	{
		this.creationTime = creationTime;
	}

	public Date getCreationTime() 
	{
		return creationTime;
	}
	public String getIndentType() {
		return indentType;
	}

	public void setIndentType(String indentType) {
		this.indentType = indentType;
	}

    public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getInvoice() {
		return invoice;
	}

	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("indentId", getIndentId())
            .append("product", getProduct())
            .append("code", getCode())
            .append("clientId", getClientId())
            .append("purchaseDate", getPurchaseDate())
            .append("orderAmount", getOrderAmount())
            .append("discount", getDiscount())
            .append("materials", getMaterials())
            .append("invoice", getInvoice())
            .append("remark", getRemark())
            .append("orderStatus", getOrderStatus())
            .append("deliveryTime", getDeliveryTime())
            .append("trackingNumber", getTrackingNumber())
            .append("serviceCondition", getServiceCondition())
            .append("creator", getCreator())
            .append("creationTime", getCreationTime())
            .toString();
    }
}
