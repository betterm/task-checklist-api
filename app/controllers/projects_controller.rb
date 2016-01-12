class ProjectsController < ApiController
  before_action :set_project, only: [:show, :update, :destroy]
  after_filter :set_content_type

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    render json: @projects, include: ['tasks']
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    render json: @project, include: ['tasks']
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      head :no_content
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy

    head :no_content
  end

  private

    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:name)
    end

    def set_content_type
      self.content_type = "application/vnd.api + json"
    end
end
