class ParseCategory
  def self.call(list, category)
    categories = list.split(",")
      .join(",")
      .split("AND")
      .join(",")
      .split(",")
      .map { |w| w.gsub(/\s+/, "") }

    categories.include?(category.upcase)
  end
end