module Api
	module V1
		class BbiController < ApplicationController
			#Latihans = Latihan.order('created_at DESC');
			def index
				bbis = Bbi.order('created_at DESC');
				render json: {status: 'Success', message: 'Loaded Users', data: bbis}, status: :ok
			end
			def show
				bbi = Bbi.find(params[:id])
				render json: {status: 'Berhasil', message: 'Loaded', data: bbi}, status: :ok
			end
			def create
				bbi = Bbi.new(bbi_params)
				
				if bbi.save
					render json: {status: 'Berhasil', message: 'Save', data: bbi}, status: :ok
				else
					render json: {status: 'Error', message: 'Not Save', data: bbi.errors}, status: :unprocessable_entity
				end
			
			end

			def destroy
				bbi = Bbi.find(params[:id])
				bbi.destroy
				render json: {status: 'Berhasil', message: 'Deleted', data: bbi}, status: :ok
				
			end

			def update
				bbi = Bbi.find(params[:id])
				if bbi.update_attributes(bbi_params)
					render json: {status: 'Berhasil', message: 'Save', data: bbi}, status: :ok
				else
					render json: {status: 'Error', message: 'Error Save', data: bbi.errors}, status: :unprocessable_entity
				end
			end

			private
			
			def bbi_params
				params.permit(:iduser, :bbi, :imt, :bmr, :fa)
			end
		end
	end
end