class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :reviews
  has_many :orders
  has_many :carts

  validates :id_user, :presence => { :message => "아이디는 필수 항목 입니다." }
  validates :id_user, :uniqueness => { :message => "이미 존재하는 아이디입니다.", :case_sensitive => false }
  validates :password, :length => { :minimum => 6, :too_short => "Your password must be at least 6 characters long." }
  validates :address, :presence => { :message => "주소는 필수 항목 입니다." }
  validates :phone_number, :presence => { :message => "휴대전화는 필수 항목 입니다." }
  validates :email, :presence => { :message => "이메일은 필수 항목 입니다." }

end
