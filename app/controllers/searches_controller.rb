class SearchesController < ApplicationController
  def show
    text_shouts = TextShout.where("body ILIKE ?", "%#{params[:query]}%")
    text_shouts_id = text_shouts.pluck(:id)
    @shouts = Shout.where(content_type: "TextShout", content_id: text_shouts_id)

  end
end
