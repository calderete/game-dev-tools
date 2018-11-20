class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @anagram_tool = AnagramHelperHelper::AnagramTool.new
end
