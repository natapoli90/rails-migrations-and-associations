# <img src="https://cloud.githubusercontent.com/assets/7833470/10899314/63829980-8188-11e5-8cdd-4ded5bcb6e36.png" height="60"> One-to-Many Challenges

If you haven't yet, set up a new Rails app in the terminal called `practice`:

  ```
  $ rails new practice -d postgresql -T
  $ cd practice
  $ rake db:create
  ```

Imagine we're creating an online order system for an e-commerce site. A customer loads up their shopping cart with *items*, and a new *order* is created when they check out. So we know we'll have an `Order` model and an `Item` model (don't worry about the customer model for now).

Here's what our models' attributes might look like:
  * `Order`: created_at
  * `Item`: name, description, price

Think about what the relationship between `orders` and `items` should be.

## Your Task

Create models and migrations for `orders` and `items`, and set up the proper relationship to associate data between the two tables. You can create these models in your `practice` Rails app. If you haven't created a `practice` app yet, go ahead and do that now.

If the relationship is modeled correctly, you'll be able to test your models in the Rails console. You should be able to do the following without throwing an error:

```ruby
# create new order
o = Order.create

# list order's items
o.items

# create new item
i = Item.create(name: "lamp", description: "desk lamp", price: 20)

# return item's order
i.order
```

**Once you've finished creating the models:**
  1. Create five items
  2. Create two orders
  3. Assign three items to the order with id = 1 and two items to the order with id = 2  _(note you may have to adjust the ids if you've created and deleted many)_
  4. For one order, iterate through each of its items and print the item details to the console.
  4. Map each item in your database to its name.

## Stretch Challenge

Select only the items in an order that are less than a certain price.

**Hint:** Take a look at the ActiveRecord Docs for <a href="http://guides.rubyonrails.org/active_record_querying.html#conditions" target="_blank">`.where` conditions</a>. You'll need to write a SQL query in the `.where` method.

Start with something like this:

```ruby
some_order.items.where() # your code to check "price < ..." goes inside the ()
```


**Important: SQL Injection**

You'll notice the Ruby Guide linked above has a warning about "SQL injection." With SQL injection attacks, users can trick your site into running SQL commands on your database. To protect against these attacks, Rails gives us a syntax for queries that uses `?`s instead of the regular string interpolation `#{}`. The `?` syntax plugs values into our SQL command strings, but it FIRST checks that the values don't contain SQL code. If you're done with this challenge set early, check out the hilarious (but scary) section on SQL injection in the <a href="http://guides.rubyonrails.org/security.html#sql-injection" target="_blank">"Security" Rails Guide</a>, and of course this well-known comic on the problem from XKCD:

![xkcd exploits of a mom](http://imgs.xkcd.com/comics/exploits_of_a_mom.png)
