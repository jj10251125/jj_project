# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "로맨틱 웨지 샌들"
p.content = "가볍고 편한 신발 어때요?"
p.price = 19800
p.color = "블랙(Black),베이지(Beige)"
p.size = "220,225,230,235,240,245,250"
p.point = 1
p.image = File.open(File.join(Rails.root, 'w_1.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "반스 올드 스쿨"
p.content = "패셔너블한 반스 운동화"
p.price = 140000
p.color = "남색(Navy),블랙(Black),화이트(White)"
p.point = 3
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_9.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "아디다스 아딜렛"
p.content = "익숙한 삼선슬리퍼"
p.price = 37000
p.color = "남색(Navy),블랙(Black),화이트(White)"
p.point = 2
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_10.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "폴린 키높이 로퍼(5cm)"
p.content = "펀칭과 태슬장식이 클래식해요~!"
p.price = 26900
p.color = "블랙(Black),화이트(White)"
p.point = 1
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_2.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "레이딧"
p.content = "봄컬러로 무장한 예쁜 스틸레토힐"
p.price = 32500
p.color = "분홍(Pink),베이지(Beige),빨강(Red),블랙(Black),화이트(White)"
p.point = 2
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_4.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "버켄스탁 아리조나"
p.content = "트랜디하고 스타일리쉬한 슬리퍼"
p.price = 64500
p.color = "갈색(Brown),남색(Navy),블랙(Black)"
p.point = 3
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_2.jpg'))
p.detail = File.open(File.join(Rails.root, 'detail_2.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "스터린"
p.content = "편안한 착화감에 두번 놀라는 샌들힐"
p.price = 32500
p.color = "블랙(Black),빨강(Red),화이트(white)"
p.point = 2
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_6.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "아디다스 이큅먼트"
p.content = "인기많은 운동하기 좋은 이큅먼트"
p.price = 110000
p.color = "남색(Navy),블랙(Black),화이트(White)"
p.point = 2
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_8.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "아디다스 아크와 9 I"
p.content = "어린이들이 신기 편한 아디다스 샌들"
p.price = 113000
p.color = "갈색(Brown),남색(Navy),블랙(Black),초록(Green)"
p.point = 2
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_2.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "아디다스 STAN SMITH "
p.content = "가죽으로 만든 테니스화인 아디다스 신발"
p.price = 131000
p.color = "블랙(Black),화이트(white)"
p.point = 3
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_4.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "ROVERS MILLENIA"
p.content = "스타일리시한 랜드로바 제품"
p.price = 127000
p.color = "블랙(Black),갈색(Brown)"
p.point = 3
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_5.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "부기베어 베어2 "
p.content = "비오는 날 신는 귀여운 장화"
p.price = 32000
p.color = "노랑(Yellow),분홍(Pink)"
p.point = 2
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_11.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "나이키 MONTREAL RACER VNTG"
p.content = "나이키에서 새로 나온 운동화"
p.price = 141000
p.color = "블랙(Black),화이트(white)"
p.point = 3
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_7.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "버켄스탁 오데사"
p.content = "신으면 시원한 독특한 코르크 제질의 버켄스탁"
p.price = 119000
p.color = "갈색(Brown),블랙(Black),화이트(white)"
p.point = 2
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_7.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "나이키 플렉스 익스피리언스 엘티알"
p.content = "찍찍이로 신고 벗기 편한 나이키 운동화"
p.price = 70000
p.color = "블랙(Black),베이지(Beige)"
p.point = 1
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_8.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "컨버스 척 테일러 올 스타 '70"
p.content = "전 세계적인 농구화의 대명사 "
p.price = 70000
p.color = "블랙(Black),베이지(Beige)"
p.point = 2
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_8.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "나이키 베네시 솔라소프트 슬라이드 2"
p.content = "신고 다니기 편한 나이키 슬리퍼"
p.price = 32000
p.color = "블랙(Black),화이트(white)"
p.point = 2
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_11.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "크록스 헬로우키티"
p.content = "크록스라이츠 헬로우 키티 리본 클로그AS"
p.price = 89000
p.color = "블랙(Black),화이트(white)"
p.size = "170,180,190,200,210,220"
p.point = 2
p.image = File.open(File.join(Rails.root, 'k_1.jpg'))
p.detail = File.open(File.join(Rails.root, 'detail_4.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "리복 GL 1500 2벨크로" 
p.content = "어린이들이 신기 편리한 찍찍이 운동화"
p.price = 51000
p.color = "블랙(Black),화이트(white)"
p.point = 1
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_3.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "스케쳐스 딜라이트 키즈"
p.content = "패셔너블한 스케쳐스 운동화"
p.price = 82000
p.color = "블랙(Black),화이트(white)"
p.point = 2
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_4.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "뉴즐"
p.content = "고급스러운 광택감이 매력적인 옥스퍼드화"
p.price = 40000
p.color = "블랙(Black),화이트(white)"
p.point = 1
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_9.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "차코 제트2 우나윕"
p.content = "여름에 신기 시원한 차코제품"
p.price = 62000
p.color = "갈색(Brown),블랙(Black),빨강(Red),화이트(White)"
p.point = 2
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_10.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "리티오"
p.content = "예쁜 LED 불빛이 반짝 반짝 빛나는 슬리퍼"
p.price = 32000
p.color = "빨강(Red),블랙(Black),화이트(White)"
p.point = 1
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_11.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "아디다스 씨티 마라톤 피티"
p.content = "운동하기에 편한 아디다스 운동화"
p.price = 89000
p.color = "블랙(Black),화이트(white)"
p.size = "250,255,260,265,270,275,280,285,290"
p.point = 2
p.image = File.open(File.join(Rails.root, 'm_1.jpg'))
p.save


p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "수페르가 2750 코투 클래식" 
p.content = "다양한 색상과 소재로 이태리 스니커즈"
p.price = 51000
p.color = "블랙(Black),화이트(white)"
p.point = 1
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_3.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "버켄스탁 리오"
p.content = "트랜디하고 스타일리쉬한 슬리퍼"
p.price = 127000
p.color = "블랙(Black),갈색(Brown)"
p.point = 2
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_5.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "벤시몽 라셋"
p.content = "어른들과 커플로 신기에 좋은 벤시몽 운동화"
p.price = 65000
p.color = "블랙(Black),화이트(white)"
p.point = 1
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_6.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "리복 GL6000"
p.content = "캐쥬얼한 리복 운동화"
p.price = 72000
p.color = "블랙(Black),화이트(white)"
p.point = 1
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_6.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "나이키 에어 맥스 90 2007(프리스쿨)"
p.content = "나이키에서 새로 나온 운동화"
p.price = 141000
p.color = "블랙(Black),화이트(white)"
p.point = 2
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_7.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "넬라인" 
p.content = "라인이 잘빠진 오픈토힐"
p.price = 23500
p.color = "베이지(Beige),분홍(Pink),블랙(Black),화이트(White),회색(Gray)"
p.point = 1
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_3.JPG'))
p.detail = File.open(File.join(Rails.root, 'detail_3.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "반스 슬립-온 브이"
p.content = "미국 국기가 연상되는 반스 슬립온"
p.price = 52000
p.color = "빨강(Red),블랙(Black),화이트(White)"
p.point = 1
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_10.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "핍플리"
p.content = "편하게 신기 좋은 플리플랍"
p.price = 19000
p.color = "갈색(Brown),블랙(Black),빨강(Red),화이트(white)"
p.point = 1
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_12.JPG'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "라코스테 수막 8"
p.content = "라코스테에서 만든 깔끔한 보트슈즈"
p.price = 129000
p.color = "블랙(Black),화이트(white)"
p.point = 2
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_12.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "아동슈즈"
p.title = "부기베어 젤리"
p.content = "비오는 날 신는 귀여운 장화"
p.price = 32000
p.color = "갈색(Brown),남색(Navy),블랙(Black),파랑(Blue)"
p.point = 1
p.size = "170,180,190,200,210,220"
p.image = File.open(File.join(Rails.root, 'k_12.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "여성슈즈"
p.title = "컨틴"
p.content = "파스텔톤의 예쁜 로퍼"
p.price = 35000
p.color = "노랑(Yellow),보라(Purple),분홍(Pink),블랙(Black),파랑(Blue),화이트(White)"
p.point = 1
p.size = "220,225,230,235,240,245,250"
p.image = File.open(File.join(Rails.root, 'w_5.JPG'))
p.detail = File.open(File.join(Rails.root, 'detail_1.jpg'))
p.save

p = Post.new
p.user_id = 1
p.category = "남성슈즈"
p.title = "라코스테 쇼코트 URS"
p.content = "두가지 색상으로 깔끔한 라코스테 운동화"
p.price = 140000
p.color = "남색(Navy),블랙(Black),화이트(White)"
p.point = 2
p.size = "250,255,260,265,270,275,280,285,290"
p.image = File.open(File.join(Rails.root, 'm_9.jpg'))
p.save

u = User.new
u.id_user = "admin"
u.username = "관리자"
u.password = "secret11"
u.email = "jshoes_admin@kw.ac.kr"
u.address = "Suwon"
u.phone_number = "031-356-3243"
u.save

u = User.new
u.id_user = "testid1"
u.username = "testname1"
u.password = "testtest"
u.email = "hihaaa@naver.com"
u.address = "Seoul"
u.phone_number = "010-1234-5678"
u.point = 0
u.save
