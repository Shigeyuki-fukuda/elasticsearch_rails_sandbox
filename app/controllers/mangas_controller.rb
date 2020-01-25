class MangasController < ApplicationController
  def index
    @mangas = if query.present?
                Manga.search(query).page(params[:page] || 1).per(5).records
              else
                Manga.page(params[:page] || 1).per(5)
              end
  end

  private

    def query
      @query ||= params[:query]
    end
end
