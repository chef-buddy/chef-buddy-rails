class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  validates :terms_and_conditions, acceptance: true

  def self.from_omniauth(auth)
    where(auth.slice(provider: auth.provider, uid:auth.uid)).first_or_create do |u|
      u.provider = auth.provider
      u.uid = auth.uid
      u.first_name = auth.info.nickname
    end
  end
end
