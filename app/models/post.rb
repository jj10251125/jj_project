class Post < ActiveRecord::Base
  belongs_to :user
  has_many   :comments
  validates :category, :inclusion => { :in => ["아동슈즈","여성슈즈","남성슈즈"], :message => "아동슈즈, 여성슈즈, 남성슈즈 중 하나를 선택하셔야 합니다." }
    validates :title, :presence => { :message => "제목을 반드시 입력하셔야 합니다." }
  mount_uploader :image, ImageUploader
	 end
