$number_of_indents = 0

def log block_description, &block
  indent = '   '*$number_of_indents

  puts "#{indent}Starting " + block_description + "..."
  $number_of_indents = $number_of_indents + 1

  result = block.call
  $number_of_indents = $number_of_indents - 1
  puts "#{indent}...Finished with the #{block_description}, returning: #{result.to_s}"
end

log "initial_block" do
  log "second_block" do
    78-5
    log "third_block" do
      log "fourth_block" do
        5+5
      end
      6*10
    end
  end
  'five' == 5
end
