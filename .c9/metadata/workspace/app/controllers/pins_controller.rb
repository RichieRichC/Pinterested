{"filter":false,"title":"pins_controller.rb","tooltip":"/app/controllers/pins_controller.rb","undoManager":{"mark":30,"position":30,"stack":[[{"start":{"row":0,"column":0},"end":{"row":48,"column":0},"action":"remove","lines":["class PinsController < ApplicationController","  before_action :set_pin, only: [:show, :edit, :update, :destroy]","  before_action :authenticate_user!, except: [:index, :show]","  before_action :correct_user, only: [:edit, :update, :destroy]","  respond_to :html","","  def index","    @pins = Pin.all","    respond_with(@pins)","  end","","  def show","    respond_with(@pin)","  end","","  def new","    @pin = Pin.new","    respond_with(@pin)","  end","","  def edit","  end","","  def create","    @pin = Pin.new(pin_params)","    @pin.save","    respond_with(@pin)","  end","","  def update","    @pin.update(pin_params)","    respond_with(@pin)","  end","","  def destroy","    @pin.destroy","    respond_with(@pin)","  end","","  private","    def set_pin","      @pin = Pin.find(params[:id])","    end","","    def pin_params","      params.require(:pin).permit(:description)","    end","end",""],"id":2}],[{"start":{"row":0,"column":0},"end":{"row":58,"column":4},"action":"insert","lines":["class PinsController < ApplicationController","  before_action :set_pin, only: [:show, :edit, :update, :destroy]","  before_action :authenticate_user!, except: [:index, :show]","  before_action :correct_user, only: [:edit, :update, :destroy]","","  respond_to :html","","  def index","    @pins = Pin.all","  end","","  def show","  end","","  def new","    @pin = current_user.pins.build","  end","","  def edit","  end","","  def create","    @pin = current_user.pins.build(pin_params)","    if @pin.save","      redirect_to @pin, notice: 'Pin was successfully created.'","    else","      render action: 'new'","    end","  end","","  def update","   if @pin.update(pin_params)","      redirect_to @pin, notice: 'Pin was successfully updated.'","    else","      render action: 'edit'","    end","  end","","  def destroy","    @pin.destroy","    redirect_to pins_url","  end","","  private","    def set_pin","      @pin = Pin.find(params[:id])","    end","","    def pin_params","      params.require(:pin).permit(:description)","    end","","","  def correct_user","      @pin = current_user.pins.find_by(id: params[:id])","      redirect_to pins_path, notice: \"Not authorized to edit this pin\" if @pin.nil?","  end","","end "],"id":3}],[{"start":{"row":35,"column":3},"end":{"row":35,"column":7},"action":"remove","lines":[" end"],"id":4}],[{"start":{"row":35,"column":3},"end":{"row":35,"column":7},"action":"insert","lines":[" end"],"id":5}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":4},"action":"remove","lines":["  "],"id":6}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"remove","lines":["  "],"id":7}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":1},"action":"insert","lines":[" "],"id":8}],[{"start":{"row":35,"column":1},"end":{"row":35,"column":2},"action":"insert","lines":[" "],"id":9}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":3},"action":"insert","lines":[" "],"id":10}],[{"start":{"row":35,"column":3},"end":{"row":35,"column":4},"action":"insert","lines":[" "],"id":11}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":4},"action":"remove","lines":["  "],"id":12}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"remove","lines":["  "],"id":13}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":1},"action":"insert","lines":[" "],"id":14}],[{"start":{"row":35,"column":1},"end":{"row":35,"column":2},"action":"insert","lines":[" "],"id":15}],[{"start":{"row":35,"column":2},"end":{"row":35,"column":3},"action":"insert","lines":[" "],"id":16}],[{"start":{"row":49,"column":46},"end":{"row":49,"column":47},"action":"insert","lines":[","],"id":17}],[{"start":{"row":49,"column":47},"end":{"row":49,"column":48},"action":"insert","lines":[":"],"id":18}],[{"start":{"row":49,"column":48},"end":{"row":49,"column":49},"action":"insert","lines":["i"],"id":19},{"start":{"row":49,"column":49},"end":{"row":49,"column":50},"action":"insert","lines":["m"]}],[{"start":{"row":49,"column":50},"end":{"row":49,"column":51},"action":"insert","lines":["a"],"id":20}],[{"start":{"row":49,"column":51},"end":{"row":49,"column":52},"action":"insert","lines":["g"],"id":21}],[{"start":{"row":49,"column":52},"end":{"row":49,"column":53},"action":"insert","lines":["e"],"id":22}],[{"start":{"row":49,"column":53},"end":{"row":49,"column":54},"action":"insert","lines":[","],"id":23}],[{"start":{"row":49,"column":54},"end":{"row":49,"column":55},"action":"insert","lines":[":"],"id":24}],[{"start":{"row":49,"column":55},"end":{"row":49,"column":56},"action":"insert","lines":["n"],"id":25}],[{"start":{"row":49,"column":56},"end":{"row":49,"column":57},"action":"insert","lines":["a"],"id":26},{"start":{"row":49,"column":57},"end":{"row":49,"column":58},"action":"insert","lines":["m"]}],[{"start":{"row":49,"column":58},"end":{"row":49,"column":59},"action":"insert","lines":["e"],"id":27}],[{"start":{"row":49,"column":54},"end":{"row":49,"column":55},"action":"insert","lines":[" "],"id":28}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":63},"action":"remove","lines":["before_action :correct_user, only: [:edit, :update, :destroy]"],"id":29}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":63},"action":"insert","lines":["before_action :correct_user, only: [:edit, :update, :destroy]"],"id":30}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":63},"action":"remove","lines":["before_action :correct_user, only: [:edit, :update, :destroy]"],"id":31}],[{"start":{"row":53,"column":2},"end":{"row":57,"column":0},"action":"remove","lines":["def correct_user","      @pin = current_user.pins.find_by(id: params[:id])","      redirect_to pins_path, notice: \"Not authorized to edit this pin\" if @pin.nil?","  end",""],"id":32}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":53,"column":2},"end":{"row":53,"column":2},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1437010722613,"hash":"d632c9c5dfaf6b5a9a5f74ea40543022070df562"}