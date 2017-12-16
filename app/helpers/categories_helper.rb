module CategoriesHelper
  def category_names(categories)
    categories.collect {|category| category.catName}.join(", ")
  end
end
