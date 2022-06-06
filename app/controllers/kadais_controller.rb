=begin
name: tanaka
date: 2020/7/13
purpose: application
=end

class KadaisController < ApplicationController
  before_action :set_kadai, only: [:show, :edit, :update, :destroy]

  # GET /kadais
  # GET /kadais.json
  def index
    @kadais = Kadai.where(user_id: current_user.id)
  end

  # GET /kadais/1
  # GET /kadais/1.json
  def show
  end

  # GET /kadais/new
  def new
    @kadai = Kadai.new
  end

  # GET /kadais/1/edit
  def edit
  end

  # POST /kadais
  # POST /kadais.json
  def create
    @kadai = Kadai.new(kadai_params)
    @kadai.user_id = current_user.id

    respond_to do |format|
      if @kadai.save
        format.html { redirect_to "/kadais", notice: '無事、課題作成完了しました！プロフィールに戻ってカレンダーを見てね！' }
        format.json { render :show, status: :created, location: @kadai }
      else
        format.html { render :new }
        format.json { render json: @kadai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kadais/1
  # PATCH/PUT /kadais/1.json
  def update
      @kadai = Kadai.find(params[:id])
      @kadais = Kadai.where(user_id: current_user.id)
    respond_to do |format|
      if @kadai.update(kadai_params)
        format.html { redirect_to @kadai, notice: '編集内容をアップデートしたよ！' }
        format.json { render :show, status: :ok, location: @kadai }
      else
        format.html { render :edit }
        format.json { render json: @kadai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kadais/1
  # DELETE /kadais/1.json
  def destroy
    @kadai.destroy
    respond_to do |format|
      format.html { redirect_to kadais_url, notice: '課題は死んだ...奴はもうどこにもいない' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kadai
      @kadai = Kadai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kadai_params
      params.require(:kadai).permit(:title, :out, :etc, :start_date, :due,:user_id, :imp, :sinko)
    end
end
