package com.fantasytours.dao;

import com.fantasytours.model.Product;

import java.util.List;

/**
 * Created by CALAB on 29/05/2016.
 */
public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

}