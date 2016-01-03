module V1
  class SocialMediasController < ::ApplicationController

    def create
      current_user.images.where(id: params[:image_ids]).each do |image|
        SocialMediaManager.new.delegate_to_interfaces(:create_from, params[:target_interfaces], image)
      end
      render json: {status: 'ok'}, status: :ok
    end

    def update
      current_user.images.where(id: params[:image_ids]).each do |image|
        SocialMediaManager.new.delegate_to_interfaces(:update_data_from, params[:target_interfaces], image)
      end
      render json: {status: 'ok'}, status: :ok
    end

    def destroy
      current_user.images.where(id: params[:image_ids]).each do |image|
        SocialMediaManager.new.delegate_to_interfaces(:destroy_for, params[:target_interfaces], image)
      end
      render json: {status: 'ok'}, status: :ok
    end

  end
end
