require 'rails_helper'

# RSpec.describe PostCategory, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe 'post_categories' do

  before do
    @category = Category.create(name: "Cool")
    @post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
    @post_categorie = PostCategory.create(post: @post, category: @category)
  end
  it 'belongs_to post' do
    expect(@post_categorie.post).to be(@post)
  end

  it 'belongs_to category' do
    expect(@post_categorie.category).to be(@category)
  end
end
