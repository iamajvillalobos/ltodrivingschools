class CreateSchools < ActiveRecord::Migration[6.1]
  def change
    create_table :schools do |t|
      t.text :region, index: true
      t.text :province, index: true
      t.text :name, index: true
      t.text :address
      t.text :contact_number
      t.text :category, index: true
      t.timestamps
    end
  end
end
