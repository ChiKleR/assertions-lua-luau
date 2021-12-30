local function assert(condition, error_message, error_stack_level)

  if not condition then
    error(error_message or "Assertion failed.", error_stack_level or 1)
  end
end

return assert