class PostController <ApplicationController

    def index
        @posts = Post.all
    end

    def show
        @post = Post.find_by({ "id" => params["id"] })
      end
    
      def new
        @post = Post.new
        
      end
    
      def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["description"] = params["post"]["description"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post.save
    
        redirect_to "/posts"
end