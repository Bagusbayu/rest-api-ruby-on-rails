module Api
	module V1
		class PlkController < ApplicationController
				#Latihans = Latihan.order('created_at DESC');
			def index
				plks = Plk.order('created_at DESC');
				render json: {status: 'Success', message: 'Loaded Users', data: plks}, status: :ok
			end
			def show
				plk = Plk.find(params[:id])
				render json: {status: 'Berhasil', message: 'Loaded', data: plk}, status: :ok
			end
			def create
				plk = Plk.new(plk_params)
				
				if plk.save
					render json: {status: 'Berhasil', message: 'Save', data: plk}, status: :ok
				else
					render json: {status: 'Error', message: 'Not Save', data: plk.errors}, status: :unprocessable_entity
				end
		
			end

			def destroy
				plk = Plk.find(params[:id])
				plk.destroy
				render json: {status: 'Berhasil', message: 'Deleted', data: plk}, status: :ok
				
			end

			def update
				plk = Plk.find(params[:id])
				if plk.update_attributes(plk_params)
					render json: {status: 'Berhasil', message: 'Save', data: plk}, status: :ok
				else
					render json: {status: 'Error', message: 'Error Save', data: plk.errors}, status: :unprocessable_entity
				end
			end

			private
			
			def plk_params
				params.permit(:iduser, :protein, :lemak, :kH)
			end
		end
	end
end