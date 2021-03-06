class CreateUserProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :user_projects do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.boolean :status, default: true

      t.timestamps
    end

    add_index :user_projects,[:user_id, :project_id], unique: true

  end
end
