grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
]

def find_item_by_name_in_collection(name, collection)
  collection.each do |food_item|
    if food_item[:item] == name
      return food_item
    end
  end 
  return nil 
end

def consolidate_cart(cart)
  count_cart = [] #make an empty result array
  cart.each do |grocery_item| #iterate through each item in the cart 
    current_item = find_item_by_name_in_collection(grocery_item[:item], count_cart) #create a variable that stores the current grocery item in the count_cart array using the previous function
    if current_item #take a look at the current item object, as defined by the current_item variable
      count_cart.each do |count_cart_item| #for each item in the count cart 
        count_cart_index = 0 #start at 0
        if count_cart_item[:item] == current_item[:item] #if the count_cart item name matches the current item name
          count_cart_item[:count] += 1 #increase the count by 1
        end #end if loop
        count_cart_index += 1 #iterate through the count cart and go to the next item
      end #end the count_cart.each loop
    else #otherwise
      grocery_item[:count] = 1 #add a count key to the grocery_item with a value of 1
      count_cart.push(grocery_item) #push that item into the count_cart
    end #end else loop
  end #end iteration through the cart
  # takes in an array of objects
  # create a result object 
  # iterate over the array of objects
  # for each new item, add a count key with a value of 1 
  # for each item that has already been counted, increase the count by 1
  # return result object, an array of objects with count added to them
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  return count_cart #return the new array
end #end the method

=begin
NOTES:

if grocery_item[:item] == count_cart[:item]
      count_cart[:item][:count] = 1
    else 
      count_cart[:item][:count] += 1
    end

=end 


  