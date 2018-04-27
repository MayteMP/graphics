class ListGroupsController < ApplicationController
  before_action :set_list_group, only: [:show, :edit, :update, :destroy]

  # GET /list_groups
  # GET /list_groups.json
  def index
    @list_groups = ListGroup.all
  end

  # GET /list_groups/1
  # GET /list_groups/1.json
  def show
  end

  # GET /list_groups/new
  def new
    @list_group = ListGroup.new
  end

  # GET /list_groups/1/edit
  def edit
  end

  # POST /list_groups
  # POST /list_groups.json
  def create
    @list_group = ListGroup.new(list_group_params)

    respond_to do |format|
      if @list_group.save
        format.html { redirect_to @list_group, notice: 'List group was successfully created.' }
        format.json { render :show, status: :created, location: @list_group }
      else
        format.html { render :new }
        format.json { render json: @list_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_groups/1
  # PATCH/PUT /list_groups/1.json
  def update
    respond_to do |format|
      if @list_group.update(list_group_params)
        format.html { redirect_to @list_group, notice: 'List group was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_group }
      else
        format.html { render :edit }
        format.json { render json: @list_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_groups/1
  # DELETE /list_groups/1.json
  def destroy
    @list_group.destroy
    respond_to do |format|
      format.html { redirect_to list_groups_url, notice: 'List group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_group
      @list_group = ListGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_group_params
      params.require(:list_group).permit(:student_id, :group_id)
    end
end
