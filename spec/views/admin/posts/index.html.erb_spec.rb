require 'rails_helper'

RSpec.describe "admin/posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(),
      Post.create!()
    ])
  end

  it "renders a list of admin/posts" do
    render
    cell_selector = 'div>p'
  end
end
