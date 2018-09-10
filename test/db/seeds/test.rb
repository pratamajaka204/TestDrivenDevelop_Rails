
# puts "========== Seeding Articles Data ==========="
# 	ActiveRecord::Base.connection.execute("TRUNCATE Articles")
# 	Article.create!([
# 		{
# 			id: 1,
# 			title: "Seed Title One",
# 			content: "Content of Article One",
# 			status: "active"
# 		},
# 		{
# 			id: 2,
# 			title: "Seed Title Two",
# 			content: "Content of Article Two",
# 			status: "active"
# 		}
# 	])

puts "========== Seeding Comments Data ==========="
	ActiveRecord::Base.connection.execute("TRUNCATE Comments")
	Comment.create!([
		{
			id: 1,
			article_id: 1,
			content: "First comment for article seed one",
			status: "active"
		},
		{
			id: 2,
			article_id: 1,
			content: "Second comment for article seed one",
			status: "active"
		},
		{
			id: 3,
			article_id: 2,
			content: "First comment for article seed two",
			status: "active"
		}
	])

puts "========== Seeding Users Data ==========="
	ActiveRecord::Base.connection.execute("TRUNCATE Articles")
	User.create!([
		{
			id: 1,
			username: "warner",
			email: "warner@gmail.com",
			password: "12345"
		},
		{
			id: 2,
			username: "develror",
			email: "develror@gmail.com",
			password: "12345"
		}
	])
	User.update_all(activation_token: "", activation_status: "active")