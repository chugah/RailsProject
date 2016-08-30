class User < ActiveRecord::Base

  has_many :messages
  has_many :comments
  has_many :rooms

  def self.create_with_omniauth(auth)
    Rails.logger.debug "Auth Returned -----> #{auth.inspect} \n"
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
      user.pic = auth["info"]["image"]
      user.email = auth["info"]["email"]
      user.name = auth["info"]["name"]
    end
  end

end
