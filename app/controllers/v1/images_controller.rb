module V1
  class ImagesController < ::ApplicationController

    def index
      render json: current_user.images.all.to_json, status: :ok
    end

    def show
      render json: current_user.images.find(params[:id]).to_json, status: :ok
    end

    def create
      image = ::V1::Image.new(image_params)
      image.user = current_user
      if image.save
        render json: {status: 'ok'}, status: :ok
      else
        render json: {errors: image.errors.messages}, status: :unprocessable_entity
      end
    end

    def update
      image = current_user.images.find(params[:id])
      if image.update_attributes(image_params)
        render json: {status: 'ok'}, status: :ok
      else
        render json: {errors: image.errors.messages}, status: :unprocessable_entity
      end
    end

    def destroy
      image = current_user.images.find(params[:id])
      if image.destroy
        render json: {status: 'ok'}, status: :ok
      else
        render json: {errors: 'could not destroy'}, status: :unprocessable_entity
      end
    end

    private

    def image_params
      params.require(:image).allow(:title, :description)
    end

  end
end
