def valid_triangle?(x, y, z)
  if (x + y) > z and (x + z) > y and (y + z) > x
    true
  else
    false
  end
end