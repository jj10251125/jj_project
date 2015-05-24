# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = ["여성슈즈","남성슈즈","아동슈즈"]

categories.each do |category|
  0.upto(1) do |i|
    p = Post.new
    p.user_id = 1
    p.category = category
    p.title = "#{category}집#{i} 이름"
    p.content = "#{category}집#{i} 설명"
    p.price = 25000
    p.save
 end
end

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
