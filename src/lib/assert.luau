--!strict

local function assert(
  condition : boolean,
  args : ({
    err_msg: (string | nil),
    err_stack_level : (number | nil)
  } | nil)
)
  local args = args or { err_msg = nil, err_stack_level = nil }
  if not condition then
    error(args.err_msg or "Assertion failed.", args.err_stack_level or 1)
  end
end

return assert