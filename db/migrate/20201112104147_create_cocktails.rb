class CreateCocktails < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.string :name
      t.string :img_url, default: "https://images.unsplash.com/flagged/photo-1587282864638-c42afb4b34e3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2734&q=80"
      t.timestamps
    end
  end
end
