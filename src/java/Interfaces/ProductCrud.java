
package Interfaces;

import Model.Product;
import java.util.List;

/**
 *
 * @author joseignacio
 */
public interface ProductCrud {
    public List listProducts();
    public Product listProduct(int id);
    public boolean addProduct(Product product);
    public boolean updateProduct(Product product);
    public boolean deleteProduct(int id);
    /* Regla del negocio*/
    public float calculateProfits(int quantity, float price);
    
}
