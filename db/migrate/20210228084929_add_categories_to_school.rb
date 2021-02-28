class AddCategoriesToSchool < ActiveRecord::Migration[6.1]
  def change
    add_column :schools, :motorcycle, :boolean, index: true
    add_column :schools, :light, :boolean, index: true
    add_column :schools, :heavy, :boolean, index: true
  end
end
