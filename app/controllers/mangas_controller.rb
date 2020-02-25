class MangasController < ApplicationController
  def index
    @mangas = if query.present?
                Manga.search(query).page(page_number).per(5).records
              else
                Manga.page(page_number).per(5)
              end
  end

  private

  def query
    @query ||= params[:query]
  end

  def page_number
    [params[:page].to_i, 1].max
  end
end
