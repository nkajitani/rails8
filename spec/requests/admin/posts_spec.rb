require 'rails_helper'

RSpec.describe "Admin::Posts", type: :request do
  let(:user) { create(:user) }
  before { sign_in user }

  describe 'GET /admin/posts' do
    it 'returns 200 success' do
      create_list(:post, 3)
      get admin_posts_path

      expect(response).to have_http_status(:success)
    end

    it 'returns list limit posts' do
      create_list(:post, 30)
      get admin_posts_path

      expect(response).to have_http_status(:success)

      get admin_posts_path, params: { page: 2 }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /admin/posts/:id' do
    let(:post_record) { create(:post) }

    it 'returns 200 success' do
      get admin_post_path(post_record)

      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /admin/posts/new' do
    it 'returns 200 success' do
      get new_admin_post_path

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /admin/posts' do
    let(:params) { attributes_for(:post) }

    it 'creates a new post and redirects' do
      post admin_posts_path, params: { post: params }

      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(admin_post_path(Post.last))
      expect(flash[:notice]).to eq("投稿が作成されました。")
    end

    it 'returns 422 unprocessable content with invalid params' do
      post admin_posts_path, params: { post: { title: '', body: '' } }

      expect(response).to have_http_status(:unprocessable_content)
    end
  end

  describe 'GET /admin/posts/:id/edit' do
    let(:post_record) { create(:post) }

    it 'returns 200 OK' do
      get edit_admin_post_path(post_record)

      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH /admin/posts/:id' do
    let(:post_record) { create(:post) }
    let(:params) { { title: 'Updated Title', body: 'Updated Body' } }

    it 'updates the post and redirects' do
      patch admin_post_path(post_record), params: { post: params }

      expect(response).to have_http_status(:redirect)
      expect(response).to redirect_to(admin_post_path(post_record))
      expect(flash[:notice]).to eq("投稿が更新されました。")
    end

    it 'returns 422 unprocessable content with invalid params' do
      patch admin_post_path(post_record), params: { post: { title: '', body: '' } }

      expect(response).to have_http_status(:unprocessable_content)
    end
  end
end
