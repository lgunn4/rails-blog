post1 = Post.create(title: "First Post", description: "This is the description for the first post",
                    content: "This is the content of the first post.")
post2 = Post.create(title: "Second Post",
                    description: "This is the description for the second post", content: "This is the content of the second post.")
post3 = Post.create(title: "Third Post", description: "This is the description for the third post",
                    content: "This is the content of the third post.", pinned: true)
                    post4 = Post.create(title: "Welcome to my blog 👋", description: "This is the description for the third post",
                        content: "This is the content of the third post.", pinned: true)

# Seed Categories
category1 = Category.create(name: "Technology", priority: 1, color: "blue")
category2 = Category.create(name: "Travel", priority: 2, color: "green")
category3 = Category.create(name: "Food", priority: 3, color: "red")

# Seed Configuration
Configuration.create(name: "Logan Gunn Blog",
                     bio: "Welcome to my blog where I talk about all things ME", profile_picture: "https://res.cloudinary.com/ddtorekqd/image/upload/v1700508074/thumbnail_ryrqu4.jpg")

# Associate Posts with Categories
post1.categories << category1
post2.categories << category1
post2.categories << category2
post3.categories << category3


User.create(email: 'admin@example.com', password: 'password', first_name: 'Admin', last_name: 'User')


Rails.logger.debug "Seed data has been created successfully!"
