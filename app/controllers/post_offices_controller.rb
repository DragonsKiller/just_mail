class PostOfficesController < ApplicationController
    def new
        @post_office = PostOffice.new
    end

    def show
        @post_office = PostOffice.find(params[:id])
    end

    def create
      @post_office = PostOffice.new(post_office_params)
      if @post_office.save
        flash[:success] = "Success!"
        redirect_to @post_office
      else
        flase[:error] = @post_office.errors.full_messages
        redirect_to @post_office
      end
    end

    private
    def post_office_params
      params.require(:post_office).permit(:postcode, :post_office_info)
    end
end
