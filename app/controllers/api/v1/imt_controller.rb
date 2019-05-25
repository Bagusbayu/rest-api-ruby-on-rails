module Api
	module V1
		class ImtController < ApplicationController
			#Latihans = Latihan.order('created_at DESC');
			def index
				imts = Imt.order('created_at DESC');
				render json: {status: 'Success', message: 'Loaded Users', data: imts}, status: :ok
			end
			def show
				imt = Imt.find(params[:id])
				render json: {status: 'Berhasil', message: 'Loaded', data: imt}, status: :ok
			end
			def create
				imt = Imt.new(imt_params)
				
				if imt.save
					render json: {status: 'Berhasil', message: 'Save', data: imt}, status: :ok
				else
					render json: {status: 'Error', message: 'Not Save', data: imt.errors}, status: :unprocessable_entity
				end
			
			end

			def destroy
				imt = Imt.find(params[:id])
				imt.destroy
				render json: {status: 'Berhasil', message: 'Deleted', data: imt}, status: :ok
				
			end

			def update
				imt = Imt.find(params[:id])
				if imt.update_attributes(imt_params)
					render json: {status: 'Berhasil', message: 'Save', data: imt}, status: :ok
				else
					render json: {status: 'Error', message: 'Error Save', data: imt.errors}, status: :unprocessable_entity
				end
			end

			private
			
			def imt_params
				params.permit(:iduser, :et)
			end
		end
	end
end