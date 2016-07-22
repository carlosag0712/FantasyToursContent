package com.fantasytours.service;

import com.fantasytours.model.Product;

import java.util.List;

/**
 * Created by CALAB on 7/9/2016.
 */
public interface ProductService {
    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

}
