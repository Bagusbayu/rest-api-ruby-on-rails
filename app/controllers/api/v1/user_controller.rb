module Api
	module V1
		class UserController < ApplicationController
			#Latihans = Latihan.order('created_at DESC');
			def index
				users = User.order('created_at DESC');
				render json: {status: 'Success', message: 'Loaded Users', data: users}, status: :ok
			end
			def show
				user = User.find(params[:id])
				render json: {status: 'Berhasil', message: 'Loaded', data: user}, status: :ok
			end
			def create
				user = User.new(user_params)
				
				if user.save
					render json: {status: 'Berhasil', message: 'Save', data: user}, status: :ok
				else
					render json: {status: 'Error', message: 'Not Save', data: user.errors}, status: :unprocessable_entity
				end
			
			end

			def destroy
				user = User.find(params[:id])
				user.destroy
				render json: {status: 'Berhasil', message: 'Deleted', data: user}, status: :ok
				
			end

			def update
				user = User.find(params[:id])
				if user.update_attributes(user_params)
					render json: {status: 'Berhasil', message: 'Save', data: user}, status: :ok
				else
					render json: {status: 'Error', message: 'Error Save', data: user.errors}, status: :unprocessable_entity
				end
			end

			private
			
			def user_params
				params.permit(:tb, :bb, :jk, :umur, :fa)
			end
		end
	end
end