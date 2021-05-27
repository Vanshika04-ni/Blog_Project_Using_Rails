class CreateDemos < ActiveRecord::Migration[6.1]
  def change
    create_table :demos do |t|
      t.string :title
      t.string :description
      t.string :user_name

      t.timestamps
    end
  end
end
