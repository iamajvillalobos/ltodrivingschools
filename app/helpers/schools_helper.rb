module SchoolsHelper
  def category_list(school)
    categories = []
    categories << "Motorcycle".upcase if school.motorcycle?
    categories << "Light".upcase if school.light?
    categories << "Heavy".upcase if school.heavy?

    categories.join(", ")
  end
end
