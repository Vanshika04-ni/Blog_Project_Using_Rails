class DemosController < ApplicationController
  before_action:authenticate_user!
  before_action :set_demo, only: %i[ show edit update destroy ]

  # GET /demos or /demos.json
  def index
    @demo = Demo.paginate(page: params[:page], per_page: 2)
  end

  # GET /demos/1 or /demos/1.json
  def show
 
  end


  def search
    @demo=Demo.where("title LIKE?","%"+params[:q]+"%")
  
  end  


  # GET /demos/new
  def new
    @demo = Demo.new
  end

  # GET /demos/1/edit
  def edit
  end

  # POST /demos or /demos.json
  def create
    @demo = Demo.new(demo_params)
    @demo.save
    redirect_to demos_path
  end
        

  # PATCH/PUT /demos/1 or /demos/1.json
  def update
   
    @demo.update(demo_params)
    
    redirect_to demos_path
  end

  # DELETE /demos/1 or /demos/1.json
  def destroy
    @demo.destroy
    respond_to do |format|
      format.html { redirect_to demos_url, notice: "Demo was successfully destroyed." }
      format.json { head :no_content }
      
     
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo
      @demo = Demo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demo_params
      params.require(:demo).permit(:title, :description, :user_name, :image)

    end
end
