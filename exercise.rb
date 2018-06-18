class Exercise

  def max_length(tree)
    partial_max = 0
    current_path = []
    tree.split("\n").each do |node|
      depth = node.count("\t")
      current_path.length.downto(depth) do |idx|
        current_path.delete_at(idx)
      end
      current_path << node.gsub("\t", "")
      current_length = current_path.join("/").length
      partial_max = current_length if current_length > partial_max
    end
    partial_max
  end
end
