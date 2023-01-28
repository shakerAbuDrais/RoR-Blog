# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.delete_all
Post.delete_all
Comment.delete_all
Like

first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-
    0BxGuVvo', bio: 'Teacher from Mexico.')

first_post = Post.create(author_id: 1, title: "the great gatspy", text: "we are here now")