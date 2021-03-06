local function assert_throws(fn, args)

  local args = args or { args = nil, err_msg = nil, err_stack_level = nil }

  if xpcall(fn, debug.traceback, table.unpack(args.args or {})) then
    error(args.err_msg or "Assertion failed.", args.err_stack_level or 1)
  end
end

return assert_throws