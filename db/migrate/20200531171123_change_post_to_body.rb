class ChangePostToBody < ActiveRecord::Migration[6.0]
  def change
    change_table :posts do |t|
      t.rename :post, :body
    end
  end
end
