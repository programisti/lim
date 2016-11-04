class CreatePageContents < ActiveRecord::Migration[5.0]
  def change
    create_table :page_contents do |t|
      t.text :links
      t.text :h1_texts
      t.text :h2_texts
      t.text :h3_texts
      t.text :source

      t.timestamps
    end
  end
end
