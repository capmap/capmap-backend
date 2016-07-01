class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.attachment :video
      t.string :video_file_name
      t.integer :video_file_size

      t.timestamps null: false
    end
  end
end
