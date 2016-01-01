module V1
  class ImagesController < ::ApplicationController

    def index
      render json: { status: 'success', images: Image.all.to_json }, status: :ok
    end

    def show

    end

    def create

    end

    def update

    end

    def destroy

    end

  end
end
