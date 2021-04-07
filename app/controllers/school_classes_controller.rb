class SchoolClassesController < ApplicationController
    before_action :set_schoolclass, only: [:show, :edit, :update]
    def index
        @school_classes=SchoolClass.all
    end

    def show
    end

    def new
        @school_class=SchoolClass.new
    end

    def create
        @school_class=SchoolClass.create(schoolclasses_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def edit
    end

    def update
        @school_class.update(schoolclasses_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private
    def set_schoolclass
        @school_class=SchoolClass.find(params[:id])
    end

    def schoolclasses_params(*args)
        params.require(:school_class).permit(*args)
    end 
      
end
