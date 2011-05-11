include_recipe "node"

# Copy the script:
cookbook_file "/usr/local/bin/awesome.js" do
  action :create
  source "awesome.js"
end


# Start the server
node_server "awesome-node" do
  script "/usr/local/bin/awesome.js"
  action :start
end