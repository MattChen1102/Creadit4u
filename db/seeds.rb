# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  email: 'matt_is_admin@gmail.com',
  password: '88888888',
  password_confirmation: '88888888',
  first_name:"Matt",
  last_name:"Chen",
  phone_number: "0905027528",
  admin: true
  )
puts 'create1'
User.create!(
  email: 'zzz33221@yahoo.com.tw',
  password: '666666',
  password_confirmation: '666666',
  first_name:"John",
  last_name:"Chang",
  phone_number: "0928112233",
  admin: false
  )
puts 'create2'
Category.create!(
	name:"Travel",
	description:"XXX",
	enabled: true
	)
puts 'create3'
Category.create!(
	name:"Gifts",
	description:"XXX",
	enabled: true
	)
puts 'create4'
Category.create!(
	name:"Restaurant",
	description:"XXX",
	enabled: true
	)
puts 'create5'
Category.create!(
	name:"Leisure",
	description:"XXX",
	enabled: true
	)
puts 'create6'
Product.create!(
	name:"長榮桂冠酒店",
	description:"Creadit4u精選國泰世華信用卡優惠飯店，最高享65折優惠",
	category_id: 1 ,
  content:"活動日期：2016/1/1~2016/12/31

		●長榮桂冠酒店（台中）

		1、平日入住，各式房型定價65折優惠（另加折扣後一成服務費），含早餐2客。
		2、週六、國定假日及其前夕、連續假期入住，每房每晚需加價NT$800。
		3、農曆春節期間恕不適用。

		注意事項：

		1、優惠期間：2016年1月1日起至2016年12月31日止（實際優惠期間請依各酒店公告）。
		2、行事曆以各酒店公告為準，若有變更恕不另行通知。
		3、持卡人需於入住前提早電話預約訂房，恕不受理現場訂房，若遇旺季或假日期間敬請及早預訂住房。
		4、持卡人需於辦理退房時以國泰世華銀行所發行之信用卡刷卡消費，方得享有優惠。
		5、上述優惠房型折扣恕不含總統套房及台糖長榮酒店（台南）全家福套房與尊爵套房。
		6、服務費需另計（請參考各酒店提供優惠內容），且恕不得與其它優惠合併使用。
		7、每日住房數量及限制依各酒店規定個別辦理。
		8、長榮國際連鎖酒店保留優惠變更之權益。
		9、優惠提供期間倘因不可歸責於本行之事由，本行得變更或終止活動內容，並於本行網站上揭露。
		",
  price:6435,
  active:true
	)
puts 'create7'
Product.create!(
	name:"墾丁假期渡假飯店",
	description:"Creadit4u精選玉山銀行信用卡優惠飯店，最高享5折優惠",
	category_id: 1 ,
  content:"墾丁假期渡假飯店",
  price:6435,
  active:true
	)
puts 'create8'
Product.create!(
	name:"寒軒國際大飯店",
	description:"Creadit4u精選兆豐銀行信用卡優惠飯店，最高享7折優惠",
	category_id: 1 ,
  content:"寒軒國際大飯店",
  price:6435,
  active:true
	)
puts 'create9'
Product.create!(
	name:"北投春天酒店",
	description:"Creadit4u精選玉山銀行信用卡優惠飯店，最高享6折優惠",
	category_id: 1 ,
  content:"北投春天酒店",
  price:6435,
  active:true
	)
puts 'create10'
Product.create!(
	name:"福容大飯店",
	description:"Creadit4u精選澳盛銀行信用卡優惠飯店，最高享7折優惠",
	category_id: 1 ,
  content:"福容大飯店",
  price:6435,
  active:true
	)
puts 'create11'
Product.create!(
	name:"艾美寒舍",
	description:"Creadit4u精選中國信託信用卡優惠探索廚房下午茶，最高享85折優惠",
	category_id: 1 ,
  content:"艾美寒舍",
  price:1680,
  active:true
	)
puts 'create12'

UserCardCategory.create!([{
	name:"花旗銀行"},{name:"澳盛銀行"},{name:"匯豐銀行"},{name:"渣打銀行"},{name:"永豐銀行"},
	{name:"台新銀行"},{name:"中國信託"},{name:"大眾銀行"},{name:"星光銀行"},{name:"凱基銀行"},
	{name:"聯邦銀行"},{name:"美國運通"},{name:"星展銀行"},{name:"遠東銀行"},{name:"台灣企銀"},
	{name:"彰化銀行"},{name:"陽信銀行"},{name:"華泰銀行"},{name:"華南銀行"},{name:"富邦銀行"},
	{name:"第一銀行"},{name:"國泰世華"},{name:"安泰銀行"},{name:"高雄銀行"},{name:"合作金庫"},
	{name:"兆豐銀行"},{name:"玉山銀行"},{name:"台灣樂天"},{name:"台灣銀行"},{name:"台灣永旺"},
	{name:"台中銀行"},{name:"日盛銀行"},{name:"元大銀行"},{name:"土地銀行"},{name:"上海銀行"},
	{name:"三信銀行"}]
	)

puts 'Fucking~~~~~~~~~~~~~~END'



