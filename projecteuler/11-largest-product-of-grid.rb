#!/bin/ruby

blank_row = %w(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)

grid = Array.new(20)
for grid_i in (0..20-1)
  grid[grid_i] = grid_t.split(' ').map(&:to_i)
  grid[grid_i] << 0
  grid[grid_i] << 0
  grid[grid_i] << 0
end

3.times do
  grid << blank_row.map { |e| e.to_i }
end

products = []

for i in 0..19
  for j in 0..16
    products.push([grid[i][j] * grid[i][j+1] * grid[i][j+2] * grid[i][j+3]]);
    products.push([grid[i][j] * grid[i+1][j] * grid[i+2][j] * grid[i+3][j]]);
    products.push([grid[i][j] * grid[i+1][j+1] * grid[i+2][j+2] * grid[i+3][j+3]]);
    products.push([grid[i][j+3] * grid[i+1][j+2] * grid[i+2][j+1] * grid[i+3][j]]);
  end
end

puts products.max;
