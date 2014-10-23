module ShoutsHelper
  def tag_finder(body)
    body.gsub(/@\w+/) do |match|
      link_to match, user_path(match.sub(/@/, ""))
    end.html_safe
  end

  def hashtag_finder(body)
    body.gsub(/#\w+/) do |match|
      link_to match, search_path(:query => match)
    end.html_safe
  end
end
