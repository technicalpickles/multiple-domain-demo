class PostsController < InheritedResources::Base
  belongs_to :user, :optional => true

  def create
    create! { @post.user }
  end

protected

  def build_resource
    @post ||= returning(super) do |post|
      post.user = current_user
    end
  end
end
