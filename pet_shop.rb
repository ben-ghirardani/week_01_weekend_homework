def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end


def add_or_remove_cash(pet_shop,amount_added)
  return pet_shop[:admin][:total_cash] += amount_added
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,new_sales)
  return pet_shop[:admin][:pets_sold] += new_sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
breed_match = []
  for pet in pet_shop[:pets]
      breed_match << pet if pet[:breed] == breed
  end
return breed_match
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]    
    if pet[:name] == pet_name
      return pet_shop[:pets].delete(pet)
    end
  end  
end

def add_pet_to_stock(pet_shop, new_pet)
# if I change the return statement to "p" my output to the console is "...7", the test passes but I'm not sure why I'm seeing the full stops there.
@pet_shop[:pets] << @new_pet
return @pet_shop[:pets].count
end



def customer_pet_count(customers)
total_pets_owned = []
  for customer in customers[:pets] do
    total_pets_owned << customer[:pets]
  end
  p total_pets_owned.count
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end


