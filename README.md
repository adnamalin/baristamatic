### How to Run:
Run file runner.rb.
- "R" or "r": restocks inventory
- "Q" or "q": quits program
- Order drinks by number on menu
- To change initial inventory or menu for the store, you can send in optional arguments to the transaction in runner.rb line 4 in the form of {inventory: {}, menu: []}
- I assumed that it was not relevant to print the inventory and menu after "out of stock" or "invalid input" responses.

### Design:

* Models: Store, Drink, Ingredient
* Utility Classes: Printer, Transaction

My Store model holds it's own menu and inventory. It also has methods that checks stock, restocks, and removing from the inventory. The store's menu is an array of Drink instances, and the store's inventory is a hash of ingredients and their current quantity in stock.

I choose to make ingredients accessible as constants in the ingredient class. This makes them easy to access, to add ingredients to the program or to change ingredient information.

The program does take store inventory and menu dynamically if you don't want to use the defaults or if you want to alter the defaults.

### Testing:
All classes except for Transaction are tested with RSpec.
