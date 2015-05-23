class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment
 
  validates :title, :presence => { :message => "제목을 반드시 입력하셔야 >합니다." }
  validates :content, :presence => { :message => "내용을 반드시 입력하셔야
 합니다." }
  
  mount_uploader :image, ImageUploader

end
