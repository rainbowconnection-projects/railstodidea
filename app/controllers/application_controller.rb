class ApplicationController < ActionController::Base
  include AmazonSignature
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :create_hash

  def create_hash
    @hash = AmazonSignature::data_hash
  end

end
