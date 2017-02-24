# TDD Exercise: Restaurant Bill

Practice good Test Driven Development (TDD) by writing tests for each component of the program, before writing the code.


## Review how to TDD

(1) Write a test that describes a feature of the software. Run the test, and watch it fail. Watching it fail is crucial! (2) Write code that makes all the tests pass. (3) Look for opportunities to clarify your code.

- Write a test
- Watch it fail
- Make it pass
- Clarify
- Repeat



## The Program
We are going to build a RestaurantBill bill class that will
- Keep track of items we order
- Give us a bill with the items' total cost, plus tax
- Let us add a tip
- See the final bill (With item's total cost, tax and tip)


This class will _not_ be using any user input.



## Get Started

- Test that a new instance of Bill is created with ```RestaurantBill.new```
- Create the class ```RestaurantBill```

- Test that RestaurantBill is initialized with the attribute ```ordered_items```, an empty array.
- Add ```ordered_items``` attribute, an empty array, to the initialize method and that it has a getter method.


- Test a method ```order_item("Poutine", 6.5)```, it should expect that ```ordered_items``` includes the new item.
- Test that if the ``order_item`` method is called 3 times, there are 3 elements in the ``` ordered_items``` array.
- Create method, ```order_item(item, cost)``` to pass test those tests. To keep each item order organized, within ``` ordered_items```, store each new item as a data structure.



Now add your own tests and code for the following features

- A method that shows the item's totals, with tax
- A method to add a tip
- A method that shows us the final bill, with tax and tip
- The class should have the following attributes: ordered_items, tip and total


Optional Feature!

- Automatically add 20% tip if no tip is given to final bill.
