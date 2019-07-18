package com.ruoyi.copyright.service;

import com.ruoyi.copyright.domain.AppProduct;
import java.util.List;

/**
 * 产品 服务层
 * 
 * @author ruoyi
 * @date 2019-07-02
 */
public interface IAppProductService 
{
	/**
     * 查询产品信息
     * 
     * @param productId 产品ID
     * @return 产品信息
     */
	public AppProduct selectAppProductById(Integer productId);
	
	/**
     * 查询产品列表
     * 
     * @param appProduct 产品信息
     * @return 产品集合
     */
	public List<AppProduct> selectAppProductList(AppProduct appProduct);
	
	/**
     * 新增产品
     * 
     * @param appProduct 产品信息
     * @return 结果
     */
	public int insertAppProduct(AppProduct appProduct);
	
	/**
     * 修改产品
     * 
     * @param appProduct 产品信息
     * @return 结果
     */
	public int updateAppProduct(AppProduct appProduct);
		
	/**
     * 删除产品信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteAppProductByIds(String ids);
	
}
