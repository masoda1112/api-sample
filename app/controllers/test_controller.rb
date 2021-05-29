class TestController < ActionController::API
  def get
    @test = Test.find_by(id: params[:id])
    render status: 200, json: {title: @test.title,id: @test.id}
  end
  def post
    # @title = params[:title]
    @test = Test.new(title: params[:title])
    if @test.save
      render json: { status: 'SUCCESS', data: @test }
    else
      render json: { status: 'ERROR', data: @test.errors }
    end
  end

  def update
    @test = Test.find_by(id: params[:id])
    @test.title = params[:title]
    if @test.save
      render json: { status: 'SUCCESS', data: @test }
    else
      render json: { status: 'ERROR', data: @test.errors }
    end
  end
  def destroy
    @test = Test.find_by(id: params[:id])
    @test.destroy
    if @test.destroy
      render json: { status: 'SUCCESS', data: Test.all }
    else
      render json: { status: 'ERROR', data: @test.errors }
    end
  end
end
