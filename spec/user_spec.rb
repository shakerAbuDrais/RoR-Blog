require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }

  before { subject.save }
  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'user posts should not be negative' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end

  it 'recent posts should return the last 3' do
    first_post = Post.new(author_id: subject, title: 'Hello', text: 'This is my first post')
    second_post = Post.new(author_id: subject, title: 'Hello', text: 'This is my second post')
    third_post = Post.new(author_id: subject, title: 'Hello', text: 'This is my third post')
    fourth_post = Post.new(author_id: subject, title: 'Hello', text: 'This is my fourth post')
    first_post.save
    second_post.save
    third_post.save
    fourth_post.save

    expect { subject.last_three_posts_for_user }.to_not raise_error
  end
end
