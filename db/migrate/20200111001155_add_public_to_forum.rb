class AddPublicToForum < ActiveRecord::Migration[6.0]
  def change
    add_column :forums, :public, :boolean
  end
end
