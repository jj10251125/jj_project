class Post < ActiveRecord::Base
  belongs_to :user
  has_many :cart
  has_many :orders

  validates :category, :inclusion => { :in => ["아동슈즈","여성슈즈","남성슈즈"], :message => "아동슈즈, 여성슈즈, 남성슈즈 중 하나를 선택하셔야 합니다." }
  validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
  validates :content, :presence => { :message => "내용을 반드시 입력하셔야 합니다." }
  validates :price, :presence => { :message => "가격을 반드시 입력하셔야 합니다." }
  validates :color, :presence => { :message => "색상을 반드시 입력하셔야 합니다." }
  validates :size, :presence => { :message => "사이즈를 반드시 입력하셔야 합니다." }
  validates :point, :presence => { :message => "적립금을 반드시 입력하셔야 합니다." }
  mount_uploader :detail, ImageUploader
  mount_uploader :image, ImageUploader
 end
