module ApplicationHelper
  def owner?(object)
    current_user.nil? || current_user.username != @article.author
  end
end
