class AddDescToArticles < ActiveRecord::Migration
  def change
    # syntax: efine what to add : table_name, :new_column_name, :data_type
    add_column :articles , :description, :text 
    # rails maintains created_at & updated_at columns automatically.
    add_column :articles , :created_at , :datetime
    add_column :articles , :updated_at , :datetime
  end
end
