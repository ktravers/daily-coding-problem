# Given the root to a binary tree, implement serialize(root), which serializes the tree into a
# string, and deserialize(s), which deserializes the string back into the tree.

# For example, given the following Node class

# ```
# class Node:
#     def __init__(self, val, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
# ```

# The following test should pass:

# ```
# node = Node('root', Node('left', Node('left.left')), Node('right'))
# assert deserialize(serialize(node)).left.left.val == 'left.left'
# ```
require 'rspec/autorun'

class BinaryTree
  LIST_SEPARATOR = ','

  def initialize(root)
    @root = root
  end

  def serialize(root)
    # get root value
    # if children
    #   get children value
    # repeat
  end

  def deserialize(string)
    string.split(LIST_SEPARATOR).map do |value|
      # TODO
    end
  end

  class Node
    attr_accessor :value, :left, :right

    NULL_MARKER = 'NULL'

    def initialize(value:, left: nil, right: nil)
      @value = value
      @right = right
      @left = left
    end

    def self.get_value(node)
      return NULL_MARKER if node.nil?
      node.value
    end
  end
end

describe BinaryTree do
  describe "#serialize" do
    it "given root, serializes the tree into a string" do
      #           root
      #           /  \
      #        left  right
      #         /
      # left.left
      left_left = BinaryTree::Node.new(value: "left.left")
      left = BinaryTree::Node.new(value: "left", left: left_left)
      right = BinaryTree::Node.new(value: "right")
      root = BinaryTree::Node.new(value: "root", left: left, right: right)
      binary_tree = BinaryTree.new(nodes: [root, right, left, left_left])

      expect(binary_tree.serialize(root)).to eq "root,left,right,left.left,NULL,NULL,NULL"
    end
  end

  describe "#deserialize" do
    it "deserializes string back into a tree" do
    end
  end
end
