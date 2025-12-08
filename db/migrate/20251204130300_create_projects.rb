class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :short_description
      t.text :description
      t.string :tech_stack
      t.string :github_url
      t.string :live_url
      t.integer :kind
      t.boolean :highlight
      t.integer :position

      t.timestamps
    end
  end
end
