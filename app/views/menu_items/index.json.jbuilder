json.menu_items @menu_items do |menu_item|
  json.(menu_item, :id, :short_name, :name, :description, :price_small, :price_large, :small_portion_name, :large_portion_name)
end
json.category(@category, :short_name, :name, :special_instructions) if @category.present?
