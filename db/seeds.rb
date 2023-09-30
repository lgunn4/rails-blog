post1 = Post.create(title: "First Post", description: "This is the description for the first post",
                    content: "This is the content of the first post.")
post2 = Post.create(title: "Second Post",
                    description: "This is the description for the second post", content: "This is the content of the second post.")
post3 = Post.create(title: "Third Post", description: "This is the description for the third post",
                    content: "This is the content of the third post.", pinned: true)

# Seed Categories
category1 = Category.create(name: "Technology", priority: 1, color: "blue")
category2 = Category.create(name: "Travel", priority: 2, color: "green")
category3 = Category.create(name: "Food", priority: 3, color: "red")

# Seed Configuration
configuration = Configuration.create(name: "Site Configuration",
                                     bio: "This is the bio for the site.", profile_picture: "profile.png")

# Associate Posts with Categories
post1.categories << category1
post2.categories << category1
post2.categories << category2
post3.categories << category3

puts "Seed data has been created successfully!"
