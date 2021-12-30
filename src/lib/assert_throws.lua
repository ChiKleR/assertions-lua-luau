local function assert_throws(fn, args, error_message, error_stack_level)

  if xpcall(fn, debug.traceback, table.unpack(args)) then
    error(error_message or "Assertion failed.", error_stack_level or 1)
  end
end

return assert_throws