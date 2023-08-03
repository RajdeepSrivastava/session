class StudentsController < ApplicationController

    def index
        @student = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        # debugger
        @student = Student.new(student_params)
        
        if @student.save
            redirect_to "/students"
        else
            render :new
        end
    end



        private

        def student_params
            params.permit(:first_name, :last_name, :email, :city, :state, :country, :pincode)
        end
end
