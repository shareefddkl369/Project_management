class SessionsController < ApplicationController
   skip_before_filter :is_loggedin?
end
