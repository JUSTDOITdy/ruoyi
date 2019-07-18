package com.ruoyi.copyright.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.copyright.mapper.AppProductMapper;
import com.ruoyi.copyright.domain.AppProduct;
import com.ruoyi.copyright.service.IAppProductService;
import com.ruoyi.common.core.text.Convert;

/**
 * 产品 服务层实现
 * 
 * @author ruoyi
 * @date 2019-07-02
 */
@Service
public class AppProductServiceImpl implements IAppProductService 
{
	@Autowired
	private AppProductMapper appProductMapper;

	/**
     * 查询产品信息
     * 
     * @param productId 产品ID
     * @return 产品信息
     */
    @Override
	public AppProduct selectAppProductById(Integer productId)
	{
	    return appProductMapper.selectAppProductById(productId);
	}
	
	/**
     * 查询产品列表
     * 
     * @param appProduct 产品信息
     * @return 产品集合
     */
	@Override
	public List<AppProduct> selectAppProductList(AppProduct appProduct)
	{
	    return appProductMapper.selectAppProductList(appProduct);
	}
	
    /**
     * 新增产品
     * 
     * @param appProduct 产品信息
     * @return 结果
     */
	@Override
	public int insertAppProduct(AppProduct appProduct)
	{
	    return appProductMapper.insertAppProduct(appProduct);
	}
	
	/**
     * 修改产品
     * 
     * @param appProduct 产品信息
     * @return 结果
     */
	@Override
	public int updateAppProduct(AppProduct appProduct)
	{
	    return appProductMapper.updateAppProduct(appProduct);
	}

	/**
     * 删除产品对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteAppProductByIds(String ids)
	{
		return appProductMapper.deleteAppProductByIds(Convert.toStrArray(ids));
	}
	
}
