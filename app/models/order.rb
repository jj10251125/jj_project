class Order < ActiveRecord::Base
  belongs_to :user
  
  validates :name, :presence => { :message => "받으시는 분을 반드시 입력하셔야 합니다." }
  validates :phone_number, :presence => { :message => "휴대전화를 반드시 입력하셔야 합니다." }
  validates :address, :presence => { :message => "주소를 반드시 입력하셔야 합니다." }

end
