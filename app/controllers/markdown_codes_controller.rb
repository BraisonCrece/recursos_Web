class MarkdownCodesController < ApplicationController
  before_action :set_markdown_code, only: %i[ show edit update destroy ]

  # GET /markdown_codes or /markdown_codes.json
  def index
    @markdown_codes = MarkdownCode.all
  end

  # GET /markdown_codes/1 or /markdown_codes/1.json
  def show
  end

  # GET /markdown_codes/new
  def new
    @markdown_code = MarkdownCode.new
  end

  # GET /markdown_codes/1/edit
  def edit
  end

  # POST /markdown_codes or /markdown_codes.json
  def create
    @markdown_code = MarkdownCode.new(markdown_code_params)

    respond_to do |format|
      if @markdown_code.save
        format.html { redirect_to markdown_code_url(@markdown_code), notice: "Markdown code was successfully created." }
        format.json { render :show, status: :created, location: @markdown_code }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @markdown_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markdown_codes/1 or /markdown_codes/1.json
  def update
    respond_to do |format|
      if @markdown_code.update(markdown_code_params)
        format.html { redirect_to markdown_code_url(@markdown_code), notice: "Markdown code was successfully updated." }
        format.json { render :show, status: :ok, location: @markdown_code }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @markdown_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markdown_codes/1 or /markdown_codes/1.json
  def destroy
    @markdown_code.destroy

    respond_to do |format|
      format.html { redirect_to markdown_codes_url, notice: "Markdown code was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_markdown_code
      @markdown_code = MarkdownCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def markdown_code_params
      params.require(:markdown_code).permit(:content)
    end
end
