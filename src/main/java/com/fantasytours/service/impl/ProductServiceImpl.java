package com.fantasytours.service.impl;

import com.fantasytours.dao.ProductDao;
import com.fantasytours.model.Product;
import com.fantasytours.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by CALAB on 7/9/2016.
 */

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;

    public Product getProductById (int productId) {
        return productDao.getProductById(productId);
    }
    public List<Product> getProductList(){
        return productDao.getProductList();

    }
    public void addProduct(Product product){
        productDao.addProduct(product);
    }

    public void editProduct(Product product) { productDao.editProduct(product);
    }

    public void deleteProduct(Product product){
        productDao.deleteProduct(product);
    }
}

