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
  first_name:"Creadit4U",
  last_name:"Chen",
  phone_number: "0905027528",
  admin: true
  )
User.create!(
  email: 'zzz33221@yahoo.com.tw',
  password: '666666',
  password_confirmation: '666666',
  first_name:"John",
  last_name:"Chang",
  phone_number: "0928112233",
  admin: false
  )

Category.create!(
	name:"Travel",
	description:"XXX",
	enabled: true,
	)

Category.create!(
	name:"Gifts",
	description:"XXX",
	enabled: true,
	)

Category.create!(
	name:"Restaurant",
	description:"XXX",
	enabled: true,
	)

Category.create!(
	name:"Leisure",
	description:"XXX",
	enabled: true,
	)

Product.create!(
	name:"長榮桂冠酒店",
	description:"Creadit4u精選國泰世華信用卡優惠飯店，最高享65折優惠",
	category_id: 1 ,
  content:"活動日期：2016/1/1~2016/12/31

		●長榮桂冠酒店（基隆）

		1、平日入住，各式房型定價5折（另加折扣後一成服務費），含早餐2客。
		2、週六、國定假日及其前夕、連續假期入住，每房每晚需加價NT$1,200。
		3、農曆春節期間入住，每房每晚需加價NT$2,500。


		●長榮桂冠酒店（台北）

		1、各式房型定價45折優惠（另加折扣後一成服務費），含早餐2客。
		2、台北世貿展覽期間及其前夕（自行車展2016/3/1~2016/3/5、電腦展2016/5/30~2016/6/4）和2016/12/31恕不適用。

		●長榮桂冠酒店（台中）


		1、平日入住，各式房型定價45折優惠（另加折扣後一成服務費），含早餐2客。
		2、週六、國定假日及其前夕、連續假期入住，每房每晚需加價NT$800。
		3、農曆春節期間恕不適用。

		●台糖長榮酒店（台南）


		1、平日入住，各式房型定價61折（免服務費），依房型贈送早餐。
		2、週六、國定假日及其前夕、連續假期入住，每房每晚需加價NT$600。
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


		長榮桂冠酒店（基隆）- 基隆市中正路62-1號 -電話：(02) 2427-9988


		長榮桂冠酒店（台北)   - 台北市松江路63號 - 電話：(02) 2501-9988


		長榮桂冠酒店（台中）- 台中市台灣大道二段666號 -電話：(04) 2313-9988


		台糖長榮酒店（台南）- 台南市中華東路三段336巷1號 - 電話：(06) 289-9988
		",
  price:6435,
  active:true,
	)

Product.create!(
	name:"墾丁假期渡假飯店",
	description:"Creadit4u精選玉山銀行信用卡優惠飯店，最高享5折優惠",
	category_id: 1 ,
  content:"墾丁假期渡假飯店",
  price:6435,
  active:true,
	)

Product.create!(
	name:"寒軒國際大飯店",
	description:"Creadit4u精選兆豐銀行信用卡優惠飯店，最高享7折優惠",
	category_id: 1 ,
  content:"寒軒國際大飯店",
  price:6435,
  active:true,
	)

Product.create!(
	name:"北投春天酒店",
	description:"Creadit4u精選玉山銀行信用卡優惠飯店，最高享6折優惠",
	category_id: 1 ,
  content:"北投春天酒店",
  price:6435,
  active:true,
	)

Product.create!(
	name:"福容大飯店",
	description:"Creadit4u精選澳盛銀行信用卡優惠飯店，最高享7折優惠",
	category_id: 1 ,
  content:"福容大飯店",
  price:6435,
  active:true,
	)

Product.create!(
	name:"艾美寒舍",
	description:"Creadit4u精選中國信託信用卡優惠探索廚房下午茶，最高享85折優惠",
	category_id: 1 ,
  content:"艾美寒舍",
  price:1680,
  active:true,
	)




