import 'package:flutter/material.dart';
import '../models/lunch_item.dart';

class OrderPage extends StatelessWidget {
  final List<LunchItem> lunchItems = [
    LunchItem(
      name: 'Burger',
      price: 5.99,
      description: 'Delicious beef burger with cheese',
      imageUrl: 'assets/burger.jpg',
    ),
    LunchItem(
      name: 'Pizza',
      price: 8.99,
      description: 'Tasty cheese pizza with fresh toppings',
      imageUrl: 'assets/pizza.jpg',
    ),
    LunchItem(
      name: 'Salad',
      price: 4.99,
      description: 'Healthy garden salad with dressing',
      imageUrl: 'assets/salad.jpg',
    ),
    LunchItem(
      name: 'Sushi',
      price: 12.99,
      description: 'Fresh sushi rolls with soy sauce',
      imageUrl: 'https://images.unsplash.com/photo-1553621042-f6e147245754',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'Order Lunch',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: Colors.teal.shade50,
            child: Center(
              child: Text(
                'Hello! What would you like to order today?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.teal.shade800,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lunchItems.length,
              itemBuilder: (context, index) {
                final item = lunchItems[index];
                return Card(
                  margin: const EdgeInsets.all(12.0),
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Display a larger image
                      ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                        child: Image.network(
                          item.imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 250, // Increase the height for a larger image
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade900,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              item.description,
                              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '\$${item.price.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(height: 16),
                            Center(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.teal,
                                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                onPressed: () => _showOrderConfirmationDialog(context, item),
                                child: Text(
                                  'Order Now',
                                  style: TextStyle(fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showOrderConfirmationDialog(BuildContext context, LunchItem item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Order Confirmation'),
        content: Text('Do you want to order ${item.name} for \$${item.price.toStringAsFixed(2)}?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(), // Close the dialog
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Ordered ${item.name}!'),
                  backgroundColor: Colors.teal,
                ),
              );
            },
            child: Text(
              'Order',
              style: TextStyle(color: Colors.teal),
            ),
          ),
        ],
      ),
    );
  }
}

