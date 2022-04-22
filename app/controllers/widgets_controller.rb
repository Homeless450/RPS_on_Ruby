class WidgetsController < ApplicationController
  before_action :set_widget, only: %i[ show edit update destroy ]

  # GET /widgets
  def index
    @widgets = Widget.all
  end

  # GET /widgets/1
  def show
  end

  # GET /widgets/new
  def new
    @widget = Widget.new
  end

  # GET /widgets/1/edit
  def edit
  end

  # POST /widgets
  def create
    @widget = Widget.new(widget_params)

    if @widget.save
      redirect_to @widget, notice: "Widget was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /widgets/1
  def update
    if @widget.update(widget_params)
      redirect_to @widget, notice: "Widget was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /widgets/1
  def destroy
    @widget.destroy
    redirect_to widgets_url, notice: "Widget was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_widget
      @widget = Widget.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def widget_params
      params.require(:widget).permit(:name)
    end
end
