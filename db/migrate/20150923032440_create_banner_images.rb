class CreateBannerImages < ActiveRecord::Migration
  def change
    create_table :banner_images do |t|
    	t.integer :page_id
    	t.integer :post_id
    	t.attachment :photo
    	t.string :headline
    	t.text :caption

      t.timestamps null: false
    end
  end
end
