require 'rails_helper'

# RSpec.describe Category, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe 'Category' do

  before do
    @category = Category.create(name: "boooooo")
  end

  it 'has a name' do
    expect(@category.name).to eq("boooooo")
  end
end
