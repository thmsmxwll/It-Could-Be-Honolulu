class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :usage
      t.string :image
      t.string :tag_list
      t.string :remote_image_url

      t.timestamps
    end
  end
end
