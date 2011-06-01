class LessonsController < ApplicationController
	
	layout :choose_layout
	
	def index
		@lessons = Lesson.all
		
		flash.now[:notice] = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,
			sed do eiusmod tempor incididunt ut labore et dolore magna
			aliqua. Ut enim ad minim veniam, quis nostrud exercitation
			ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis
			aute irure dolor in reprehenderit in voluptate velit esse cillum 
			dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
			non proident, sunt in culpa qui officia deserunt mollit anim id est 
			laborum.'
								  
		respond_to do |format|
		format.html
		format.xml { render :xml => @lessons }
		end
		
		
	end
	
	def new
		@lesson = Lesson.new
		
		respond_to do |format|
		format.html
		format.xml { render :xml => @lesson }
		end
	end
	
	def create
		@lesson = Lesson.new(params[:lesson])
		
		respond_to do |format|
			if @lesson.save
				format.html { redirect_to(@lesson,
										:notice => 'Lesson was successfully created') }
				format.xml { render :xml => @lesson,
										:status => :created, :location => @post }
			else
				format.html { render :action => "new" }
				format.xml { render :xml => @lesson.errors,
										:status => :unprocessable_entity }
			end
		end
	end
	
	def show
		@lesson = Lesson.find(params[:id])
		@stage1	= @lesson.units.where( :stage_id => 1 )
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @lesson }
		end
	end
	
	def edit
		@lesson = Lesson.find(params[:id])
		
		respond_to do |format|
			format.html
			format.xml { render :xml => @lesson }
		end
	end
	
	def update
		@lesson = Lesson.find(params[:id])
		
		respond_to do |format|
			if @lesson.update_attributes(params[:lesson])
				format.html { redirect_to @lesson,
										:notice => 'Lesson was successfully updated.'}
				format.xml { head :ok }
			else
				format.html { render :action => "edit" }
				format.xml { render :xml => @lesson.errors,
										:status => :unprocessable_entity }
			end
		end
	end
	
	def destroy
		@lesson = Lesson.find(params[:id])
		@lesson.destroy
		
		respond_to do |format|
			format.html { redirect_to root_path }
			format.xml { head :ok }
		end
	end
	
	private
	
	def choose_layout
		if [ 'index', 'edit'].include? action_name
			'home'
		else
			'lesson'
		end
	end
end
