class CreateMarkdownCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :markdown_codes do |t|
      t.text :content

      t.timestamps
    end
  end
end
