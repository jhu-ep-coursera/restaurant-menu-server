require 'csv'

Category.destroy_all

CSV.foreach("#{Rails.root}/db/categories.csv", headers: true) do |row|
  Category.create! short_name: row["short_name"], 
                   name: row["name"], 
                   special_instructions: row["special_instructions"] || ""  
end

CSV.foreach("#{Rails.root}/db/menu_items.csv", headers: true) do |row|
  category = Category.find_by! short_name: row["category_id"]
  MenuItem.create! short_name: row["short_name"], 
                   name: row["name"], 
                   description: row["description"] || "",  
                   price_small: row["price_small"],  
                   price_large: row["price_large"],  
                   small_portion_name: row["small_portion_name"],  
                   large_portion_name: row["large_portion_name"],
                   category: category
end
