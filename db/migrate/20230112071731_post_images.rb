class PostImages < ActiveRecord::Migration[6.1]
  def change
    drop_table :post_images
  end
end
