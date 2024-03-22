class ApplicationController < ActionController::Base
  def index
    path = "./enhance-ssr.wasm"
    manifest = Extism::Manifest.from_path path
    plugin = Extism::Plugin.new(manifest, wasi:true)
    render :index
  end
end

def read_elements(directory)
  elements = {}
  Dir.foreach(directory) do |filename|
    next if filename == '.' || filename == '..' # Skip current and parent directory entries
    file_path = File.join(directory, filename)
    if File.file?(file_path)
      key = File.basename(filename, ".*")
      elements[key] = File.read(file_path)
    end
  end
  elements
end
