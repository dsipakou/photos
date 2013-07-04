class CreateAdminItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category_id
      t.string :path
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
