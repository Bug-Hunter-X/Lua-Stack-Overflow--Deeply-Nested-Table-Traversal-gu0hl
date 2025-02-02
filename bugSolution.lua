local function foo(t)
  local q = {}
  table.insert(q, t)

  while #q > 0 do
    local current = table.remove(q, 1)
    for k, v in pairs(current) do
      if type(v) == "table" then
        table.insert(q, v)
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

-- This iterative solution avoids stack overflow errors.