class BookmarksController < ApplicationController

    def new
      @bookmark = Bookmark.new
    end

    def create
     @bookmark = Bookmark.new(bookmark_params)
     @bookmark.save
     redirect_to list_path(@list)
    end

    private

    def bookmark_params
      params.expect(bookmark: [ :comment, :list_id, :movie_id ])
    end

end
