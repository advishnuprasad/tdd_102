class ClocksController < ApplicationController
  def index
  	@all_clocks = Clock.all
  end

  def new
  end

  def create
  	c = Clock.build({:country => params[:country] , :timezone => BigDecimal.new(params[:timezone])}) 
  	if c.save
      flash[:notice] = "successfully added"
      redirect_to clocks_path
    else
      redirect_to new_clock_path
    end
  end

  def show
  	@clock = Clock.find(params[:id])
    time = Time.new.getutc
    @utc = {}
    @utc[:hours] = time.hour 
    @utc[:mins] = time.min
    @utc[:secs] = time.sec
    @local_time = find_localtime(@utc , @clock.timezone)
  end 

  def edit
    @clock = Clock.find(params[:id])
  end

  def update
    @clock = Clock.find(params[:id])
    if @clock.update_attributes(params[:clock])
      redirect_to clocks_path
    else
      redirect_to edit_clock_path(@clock)
    end
  end

  def destroy
    Clock.delete(params[:id])
    redirect_to clocks_path
  end

  private
  def find_localtime(utc,timezone)
    local_time = {}
    local_time[:hours] = utc[:hours] + timezone.floor
    local_time[:mins] = (((timezone*100)%100) + utc[:mins])
    if local_time[:mins] >= 60 
      local_time[:hours] += 1 
      local_time[:mins] = 0
    end
    local_time[:secs] = utc[:secs]
    local_time
  end
end
