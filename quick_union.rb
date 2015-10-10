class QuickUnion

	attr_accessor :nodes, :sizes

	def initialize(number)
		self.nodes = []
		self.sizes = []

		number.times do |n|
			self.nodes[n] = n
			self.sizes = 1
		end
	end

	def root(i)
		while nodes[i] != i
			nodes[i] = nodes[nodes[i]]
			i = nodes[i]
		end
		i
	end

	def union(i,j)
		rooti = root(i)
		rootj = root(j)

		return if rooti == rootj

		if sizes[i] < sizes[j]
			nodes[rooti] = rootj
			sizes[rootj] += sizes[rooti]
		else 
			nodes[rootj] = rooti
			sizes[rooti] += sizes[rootj]
		end
	end

	def connected?(i, j)
		root(i) == root(j)
	end

end

u = QuickUnion.new(10)

p u.nodes

u.connected?(1, 6)


u.union(1,2)
u.union(3,4)
u.union(5,6)
u.connected?(1, 6)




