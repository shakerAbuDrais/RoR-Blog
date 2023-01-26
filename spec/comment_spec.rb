require_relative 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.new(name: 'Tom & Jerry', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Best friends', posts_counter: 0) }
  let(:post) do
    Post.new(title: 'The Great Adventure', text: 'The story of Tom and Jerry', authorid: 1, comments_counter: 0,
             likes_counter: 0)
  end
  subject { Comment.new(text: 'Tom and Jerry show', authorid: user, post: post) }

  before { subject.save }

  it 'is not valid without an author' do
    subject.authorid = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a post' do
    subject.post = nil
    expect(subject).to_not be_valid
  end
end
