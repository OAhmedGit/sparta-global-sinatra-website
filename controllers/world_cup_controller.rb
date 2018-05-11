class WorldCupController < Sinatra::Base

    # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # sets the view directory correctly
    set :views, Proc.new { File.join(root, "views") }

    configure :development do
      register Sinatra::Reloader
    end

    #index page
    get "/" do
      @title = "World Cup Groups"
      @groups = Group.all

      erb :"posts/index"
    end

    # new page
    get "/new" do
      @group = Group.new
      erb :"posts/new"
    end

    #show page
    get "/:id" do
        id = params[:id]
        @group = Group.find(id)

        erb :"posts/show"
    end

    #edit page
    get "/:id/edit" do
      id = params[:id]
      @group = Group.find(id)

      erb :"posts/edit"
    end

    #create page
    post "/" do
      post = Group.new

      post.group_letter = params[:group_letter]
      post.team_1 = params[:team_1]
      post.team_2 = params[:team_2]
      post.team_3 = params[:team_3]
      post.team_4 = params[:team_4]

      post.save

      redirect "/"
    end

    #delete page
    delete "/:id" do
        id = params[:id]

        Group.destroy(id)

        redirect "/"
    end

    #update page
    put "/:id" do

        id = params[:id]
        post = Group.find(id)

        post.group_letter = params[:group_letter]
        post.team_1 = params[:team_1]
        post.team_2 = params[:team_2]
        post.team_3 = params[:team_3]
        post.team_4 = params[:team_4]

        post.save

        redirect "/"
    end
end
