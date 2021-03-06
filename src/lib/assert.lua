local function assert(condition, args)

  local args = args or { err_msg = nil, err_stack_level = nil }

  if not condition then
    error(args.err_msg or "Assertion failed.", args.err_stack_level or 1)
  end
end

return assert