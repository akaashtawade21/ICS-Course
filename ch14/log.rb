def log block_description, &block
  puts "Starting " + block_description + "..."
  result = block.call
  puts "Finished with the #{block_description}, returning: #{result.to_s}"
end

log "initial_block" do
  log "second_block" do
    78-5
  end

  log "third_block" do
    6*10
  end

  'five' == 5
end
