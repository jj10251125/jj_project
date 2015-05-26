# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#categories = ["여성슈즈","남성슈즈","아동슈즈"]

#categories.each do |category|
#  0.upto(1) do |i|
#    p = Post.new
#    p.user_id = 1
#    p.category = category
#    p.title = "#{category}집#{i} 이름"
#    p.content = "#{category}집#{i} 설명"
#    p.price = 25000
#    p.image = File.open(File.join(Rails.root, 'shoes1.JPG'))
#    p.save
# end
#end

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "로맨틱 웨지 샌들"
p.content = "가볍고 편한 신발 어때요?"
p.price = 19800
p.color = "블랙(Black),베이지(Beige)"
p.size = "220,225,230,235,240,245,250"
p.point = "1%"
p.image = File.open(File.join(Rails.root, 'shoes1.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "폴린 키높이 로퍼(5cm)"
p.content = "펀칭과 태슬장식이 클래식해요~!"
p.price = 26900
p.color = "블랙(Black),화이트(white)"
p.point = "2%"
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'shoes2_re.jpg'))
p.save

u = User.new
u.id_user = "admin"
u.username = "관리자"
u.password = "secret11"
u.email = "jshoes_admin@kw.ac.kr"
u.address = "seoul"
u.phone_number = 01011111111
u.save

u = User.new
u.id_user = "testid1"
u.username = "testname1"
u.password = "testtest"
u.email = "hihaaa@naver.com"
u.address = "kkkkkkkk"
u.phone_number = 111111
u.save
