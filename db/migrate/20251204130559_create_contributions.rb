class CreateContributions < ActiveRecord::Migration[8.0]
  def change
    create_table :contributions do |t|
      t.string :project_name
      t.string :repo_url
      t.string :pr_url
      t.string :description
      t.string :tech_stack
      t.integer :position

      t.timestamps
    end
  end
end
