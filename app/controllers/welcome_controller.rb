class WelcomeController < ApplicationController
  skip_before_filter :is_loggedin?
  def index
  end
end
