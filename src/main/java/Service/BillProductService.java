package Service;

import java.util.List;

import QuanLi.BillProductDao;
import Table.BillProduct;

public class BillProductService {
	private QuanLi.BillProductDao billProductDao;
	public BillProductService()
    {
		billProductDao = new BillProductDao();
    }
    public List<BillProduct> getAllBillProduct()
    {
        return billProductDao.getAllBillProduct();
    }
    public void addBillProduct(BillProduct billProduct)
    {
    	billProductDao.addBillProduct(billProduct);
    }
    public void deleteCar (int id)
    {
        billProductDao.deleteCar(id);
    }
}
