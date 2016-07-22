package com.fantasytours.dao;

import com.fantasytours.model.Cart;

/**
 * Created by CALAB on 04/06/2016.
 */
public interface CartDao {

    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId,Cart cart);

    void  delete (String cartId);

}
