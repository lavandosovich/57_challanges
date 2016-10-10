class WebSiteGenerator
    def self.create(options={})
        @name = options[:name]
        @author = options[:author]
        @folders =
        {:js=>options[:js]||nil,:css=>options[:css]||nil}.delete_if do |key,value|
            options[key] == nil
        end
        @html = %Q{<meta>#{@author}</meta>
      <title>#{@name}</title>}
        self.touch_cd_dir
        self.create_index_html
        self.create_folder
    end


private
    def self.touch_cd_dir
        Dir.mkdir("#{@name}_site") unless Dir.exist?("#{@name}_site")
        Dir.chdir("./#{@name}_site")
        puts "Created ./#{@name}"
    end

    def self.create_index_html
        f=File.new("index.html",'w')<<@html
        f.close
        puts "Created ./#{@name}/index.html"
    end

    def self.create_folder
        @folders.keys.each do |folder|
            Dir.mkdir("#{folder}") unless Dir.exist?("#{folder}")
            puts "Created ./#{@name}/#{folder}"
        end
    end

end
