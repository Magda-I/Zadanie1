package model;

import java.util.ArrayList;
import java.util.List;

public class Product {

    private String name;
    private Double price;

    public Product(String name, String price) {
        if (!(name.isEmpty() || price.isEmpty())) {
            this.name = name;
            this.price = Double.valueOf(price);
        }
    }

    public String getName() {
        return name;
    }

    public Double getPrice() {
        return price;
    }

    public static void add(List<Product> items, String name, String price) {
        if (!(name.isEmpty() || price.isEmpty())) {
            items.add(new Product(name, price));
        }
    }

    public static List<Double> bill(List<Product> boughtList) {
        List<Double> prices = new ArrayList<>();
        for (Product p : boughtList) {
            prices.add(p.getPrice());
        }
        return prices;
    }

    public static List<String> list(List<Product> boughtList) {
        List<String> products = new ArrayList<>();
        for (Product p : boughtList){
            products.add(p.getName());
        }
        return products;
    }
}
