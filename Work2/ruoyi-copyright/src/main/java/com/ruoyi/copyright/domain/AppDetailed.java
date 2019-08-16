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
	private String coded;
	/** 关联产品表id*/
	private Integer productId;
	/** 产品*/
	private String product;
	/** 软件（作品）名字*/
	private String worksName;
	/** 价格*/
	private Integer price;
	/** 是否代写*/
	private String ghostWrite;
	/** 数量 */
	private Integer amount;
	/** 递交时间 */
	private Date submitTime;
	/** 发货时间 */
	private Date deliveryTime;
	/** 流水号 */
	private String serialsNumber;
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
	public void setCoded(String coded) 
	{
		this.coded = coded;
	}

	public String getCoded() 
	{
		return coded;
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

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public void setAmount(Integer amount) 
	{
		this.amount = amount;
	}

	public Integer getAmount() 
	{
		return amount;
	}

    public Date getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(Date deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

	public String getTrackingNumber() {
		return trackingNumber;
	}

	public void setTrackingNumber(String trackingNumber) {
		this.trackingNumber = trackingNumber;
	}
	

	public String getWorksName() {
		return worksName;
	}

	public void setWorksName(String worksName) {
		this.worksName = worksName;
	}

	public String getGhostWrite() {
		return ghostWrite;
	}

	public void setGhostWrite(String ghostWrite) {
		this.ghostWrite = ghostWrite;
	}

	public Date getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	public String getSerialsNumber() {
		return serialsNumber;
	}

	public void setSerialsNumber(String serialsNumber) {
		this.serialsNumber = serialsNumber;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("detailedId", getDetailedId())
            .append("coded", getCoded())
            .append("productId", getProductId())
            .append("product", getProduct())
            .append("worksName", getWorksName())
            .append("price", getPrice())
            .append("ghostWrite", getGhostWrite())
            .append("amount", getAmount())
            .append("submitTime", getSubmitTime())
            .append("deliveryTime", getDeliveryTime())
            .append("serialsNumber", getSerialsNumber())
            .append("trackingNumber", getTrackingNumber())
            .toString();
    }
}
