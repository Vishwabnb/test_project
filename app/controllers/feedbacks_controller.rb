class FeedbacksController < ApplicationController
  before_action :set_feedback, only: %i[ show edit update destroy ]
  before_action :authenticate_customer!

  def index
    @feedbacks = Feedback.all
  end

  def show
  end

  def new
    @feedback = Feedback.new
  end

  def edit
  end

  def create
    @feedback = current_customer.feedbacks.build(feedback_params)
    if @feedback.save
      redirect_to @feedback, notice: 'Feedback was successfully created.'
    else
      render :new
    end
  end

  def update
    if @feedback.update(feedback_params)
      redirect_to @feedback, notice: 'Feedback was successfully updated.'
    else
        render :edit
    end
  end

  def destroy
    @feedback.destroy
    redirect_to feedbacks_path, notice: 'Feedback was successfully destroyed.'
  end

  private
    def set_feedback
      @feedback = Feedback.find(params[:id])
    end

    def feedback_params
      params.require(:feedback).permit(:rating, :comment, :feedbackable_type, :feedbackable_id, :feedbackname)
    end
end