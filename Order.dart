void main() {
  List<Map<dynamic, dynamic>> Order = [
    {"ID": 1, "Item": "Burger", 'status': "Ready"},
    {"ID": 2, "Item": "Pizza", 'status': "Canceled"},
    {"ID": 3, "Item": "Fries", 'status': "Ready"},
    {"ID": 4, "Item": "Nuggets", 'status': "Ready"},
    {"ID": 5, "Item": "Fries", 'status': "Vip"},
    {"ID": 6, "Item": "Pizza", 'status': "Canceled"},
    {"ID": 6, "Item": "ice cream", 'status': "Canceled"},
  ];

  for (var i = 0; i < Order.length; i++) {
    // print(Order);

    if (Order[i]["status"] == "Canceled") {
      continue;
    }

    if (Order[i]["status"] == "Ready") {
      print(Order[i]);
    } else if (Order[i]["status"] == "Vip") {
      print("Priority for this order");
      print(Order[i]);
    }
  }

  for (var i = 0; i < Order.length; i++) {
    if (Order[i]["ID"] == 4) {
      print("Order #4 is taking too long! Alert the kitchen!");
    }

    switch (Order[i]['Item']) {
      case 'Burger':
        print("Enjoy your delicious burger");
        break;

      case 'Pizza':
        print("Enjoy a slice of pizza");
        break;

      case 'Fries':
        print("Crispy and golden fries coming up");
        break;

      case 'Nuggets':
        print("Hot and crispy nuggets");
        break;

      default:
        print("Unknown item: ${Order[i]['Item']}. Please check the order.");
    }
  }
}
