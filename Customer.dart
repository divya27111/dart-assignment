void main() {
  List<Customer> customerList = getListofCustomers();
  for (Customer cust in customerList) {
    print("Customer name is : ${cust.name}");
    if (cust.orders != null) {
      cust.orders.forEach((order) {
        double totalOrderPrice = 0.0;
        order.products.sort((a,b)=>a.price.compareTo(b.price));
        order.products.forEach((element) {
          totalOrderPrice += element.price;
        });
        print(
            "Order id is ${order.id} and total order Price is ${totalOrderPrice}");
      });
      print("\n");
    }
  }
}

class Customer {
  String name;
  Address address;
  List<Order> orders;
  Customer(name, address, orders) {
    this.name = name;
    this.address = address;
    this.orders = orders;
  }
}

class Address {
  Set<String> office;
  Set<String> res;
  Address(office, res) {
    this.office = office;
    this.res = res;
  }
}

class Order {
  int id;
  List<Product> products;
  Order(id, prodList) {
    this.id = id;
    this.products = prodList;
  }
}

class Product {
  String productName;
  double price;
  Product(name, price) {
    this.productName = name;
    this.price = price;
  }
}

List<Customer> getListofCustomers() {
  List<Customer> customerList = new List();
  Customer customer1 = new Customer("Marry",
      new Address({"office address 1", "office addrss 2"}, {"res1", "res2"}), [
    new Order(113221, [new Product("prod1", 23.9), new Product("prod2", 20.9)])
    
  ]);
  customerList.add(customer1);

  Customer customer2 = new Customer("Sam",
      new Address({"office address 1", "office addrss 2"}, {"res1", "res2"}), [
    new Order(67268, [new Product("prod1", 23.9), new Product("prod2", 20.9)])
  ]);
  customerList.add(customer2);

  Customer customer3 = new Customer("Neil",
      new Address({"office address 1", "office addrss 2"}, {"res1", "res2"}), [
    new Order(218179, [new Product("prod1", 23.9), new Product("prod2", 20.9)])
  ]);
  customerList.add(customer3);

  Customer customer4 = new Customer("Robin",
      new Address({"office address 1", "office addrss 2"}, {"res1", "res2"}), [
    new Order(298791, [new Product("res", 23.9), new Product("ddf", 20.9)])
  ]);
  customerList.add(customer4);

  Customer customer5 = new Customer("Tom",
      new Address({"office address 1", "office addrss 2"}, {"res1", "res2"}), [
    new Order(71298, [new Product("uyt", 235.0), new Product("abc", 20.9)]),
    new Order(688, [new Product("uyt", 235.0), new Product("abc", 20.9)])
  ]);
  customerList.add(customer5);
  return customerList;
}
