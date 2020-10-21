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
  count_cart = [] 
  cart.each do |grocery_item| 
    current_item = find_item_by_name_in_collection(grocery_item[:item], count_cart) 
    if current_item 
      count_cart.each do |count_cart_item|  
        count_cart_index = 0 
        if count_cart_item[:item] == current_item[:item] 
          count_cart_item[:count] += 1 
        end 
        count_cart_index += 1 
      end 
    else 
      grocery_item[:count] = 1 
      count_cart.push(grocery_item) 
    end 
  end 
  # takes in an array of objects
  # create a result array
  # iterate over the array of objects
  # for each new item, add a count key with a value of 1 
  # for each item that has already been counted, increase the count by 1
  # return result object, an array of objects with count added to them
  return count_cart 
end 

=begin
NOTES:

if grocery_item[:item] == count_cart[:item]
      count_cart[:item][:count] = 1
    else 
      count_cart[:item][:count] += 1
    end

=end 


  