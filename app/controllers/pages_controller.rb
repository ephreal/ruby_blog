class PagesController < ApplicationController

    # We can automatically have set_page run on EVERYTHING in here
    # to automatically set the page by using the following line.
    before_action :set_page, except: [:index, :new, :create]
    
    # Alternatively, if running the before_action happens only on
    # a few methods, we can provide a whitelist instead of a
    # blacklist.
    #
    # before_action :set_page, only: [:destroy, :edit, :show, :update]

    def destroy()
        @page.destroy()
        redirect_to "/pages"
    end

    def edit()
        id = params[:id]
        @page = Page.find(id)
    end

    def index()
       @pages = Page.all 
    end

    def show()
    end

    def new()
       @page = Page.new()
    end

    # PATCH requests

    def update()
        @page.update(page_params)
        redirect_to @page
    end

    # POST requests
    def create()
        @page = Page.new(page_params)
        @page.save
        redirect_to @page
    end


    private
        def page_params
            params.require(:page).permit(:title, :body, :slug)
        end

        def set_page
            @page = Page.find(params[:id])
        end
end
