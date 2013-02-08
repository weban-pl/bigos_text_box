class CreateBigosTextBoxTextBlocks < ActiveRecord::Migration
  def change
    create_table :bigos_text_box_text_blocks do |t|
      t.integer :bigos_text_block_element_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
