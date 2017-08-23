# TDD Exercise: Restaurant Bill

Practice good Test Driven Development (TDD) by writing tests for each component of the program, before writing the code.


## Review how to TDD

(1) Write a test that describes a feature of the software. Run the test, and watch it fail. Watching it fail is crucial! (2) Write code that makes all the tests pass. (3) Look for opportunities to clarify your code.

- Write a test
- Watch it fail
- Make it pass
- Clarify
- Repeat

Refer to the lesson [Automated Tests](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/intro-to-automated-tests.md).


## The Program
We are going to build a ```RestaurantBill``` class that will
- Keep track of items we order
- Give us a bill with the items' total cost, plus tax
- Let us add a tip
- See the final bill (With item's total cost, tax and tip)


This class will __not__ be using any user input.



## Get Started


Start working in restaurant_bill_spec.rb by setting up a ```describes``` block.

Write a test, run rake, then uncomment only the code that is needed to pass that test in restaurant_bill.rb. Get that test to pass before moving on to the next one. Your first tests should follow the order of the list below. 


- Test that a new instance of Bill is created with ```RestaurantBill.new```
- Test that RestaurantBill is initialized with the attribute ```ordered_items```, an empty array.
- Test the method ```order_item```, it should expect that ```ordered_items``` includes the new item.
- Test that if the ``order_item`` method is called 3 times, there are 3 elements in the ``` ordered_items``` array.


## Keep Going!
Now add your own tests and code for the following features

- A method that returns a total of all the item's costs combined, with tax
- A method to add a tip. Returns total with tip.
- A way to see the final cost of a bill, with tax and tip
- The class should have the following attributes: ordered_items, tip and total



**If you're feeling stuck**, refer to ['What should I test'](https://github.com/Ada-Developers-Academy/textbook-curriculum/blob/master/00-programming-fundamentals/intro-to-automated-tests.md#what-should-i-test).
