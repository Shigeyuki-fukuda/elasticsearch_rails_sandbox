class MangasController < ApplicationController
  def index
    @mangas = query.present? ? Manga.search(query).records : Manga.all
  end

  private

    def query
      @query ||= params[:query]
    end
end
