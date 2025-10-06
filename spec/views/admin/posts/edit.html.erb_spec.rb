require 'rails_helper'

RSpec.describe "admin/posts/edit", type: :view do
  let(:post) {
    Post.create!()
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit admin_post form" do
    render

    assert_select "form[action=?][method=?]", admin_post_path(post), "post" do
    end
  end
end
