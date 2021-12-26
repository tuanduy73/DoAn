package Service;

import QuanLi.CarDao;
import QuanLi.GameDao;
import Table.Product;
import java.util.List;

public class ProductService {
private QuanLi.CarDao carDao;
    
    public ProductService()
    {
    	carDao = new CarDao();
    }
    public List<Product> getAllCar()
    {
        return carDao.getAllProduct();
    }
    public void addGaming(Product product)
    {
    	carDao.addCar(product);
    }
 
    public void deleteCar (int id)
    {
    	carDao.deleteCar(id);
    }
    public Product getCarById (int id)
    {
        return carDao.getCarById(id);
    }
    public void updateCar(Product product)
    {
    	carDao.updateCar(product);
    }	
}
