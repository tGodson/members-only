# frozen_string_literal: true

class RemovePasswordFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :password
  end
end
