def create_node input
    return {:left => nil, :value => input, :right => nil}
end

def add_node current_node, new_node
    if new_node[:value] < current_node[:value]
        if current_node[:left] == nil
            current_node[:left] = new_node
        else
            add_node current_node[:left], new_node
        end
    elsif new_node[:value] > current_node[:value]
        if current_node[:right] == nil
            current_node[:right] = new_node
        else
            add_node current_node[:right], new_node
        end
    end
end

def array_to_binary array
    array.map!{|node| create_node node}
    root = array[0]
    array.each{|node| add_node root, node}
end

array = [8,2,9,11,5]
puts (array_to_binary array).first
