module ShoutsHelper
  def tag_finder(body)
    body.gsub(/@\w+/) do |match|
      link_to match, user_path(match.sub(/@/, ""))
    end.html_safe
  end
end
