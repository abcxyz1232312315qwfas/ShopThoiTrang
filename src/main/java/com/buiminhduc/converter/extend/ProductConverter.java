package com.buiminhduc.converter.extend;

import com.buiminhduc.converter.impl.ConverterImpl;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.response.ProductResponse;
import java.util.ArrayList;
import java.util.List;

public class ProductConverter extends ConverterImpl<ProductRequest,ProductResponse,ProductEntity> {
    @Override
    public ProductEntity converToEntity(ProductEntity productEntity, ProductRequest productRequest) {
        return super.converToEntity(productEntity, productRequest);
    }

    @Override
    public ProductResponse converToResponse(ProductResponse productResponse, ProductEntity productEntity) {
        return super.converToResponse(productResponse, productEntity);
    }

    @Override
    public List<ProductResponse> convertToListResponse( List<ProductEntity> productEntities) {
        List<ProductResponse> vs = new ArrayList<>();
        for (ProductEntity productEntity: productEntities) {
            ProductResponse productResponse = new ProductResponse();
            productResponse= converToResponse(productResponse,productEntity);
            vs.add(productResponse);
        }
        return vs;
    }
}