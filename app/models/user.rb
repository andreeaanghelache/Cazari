class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :score, :uid
  def show_by_id(options={})
    User.where(uid: options[:id])
  end 
end
