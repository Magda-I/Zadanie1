package businesslogic;

import model.Product;

import java.util.List;

public class PriceCalculator {

    public double sum(List<Product> items) {
        double result = 0;
        for (Product p : items) {
            result = result + p.getPrice();
        }
        return result;
    }

    public double mean(List<Product> items) {
        double result = sum(items)/items.size();
        return result;
    }

}
