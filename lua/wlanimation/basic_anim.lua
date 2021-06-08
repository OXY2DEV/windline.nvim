local M={}

--- @params animation Animation
local function tick(animation)
    local state = animation.__state
    state.value = animation.effect(state.value)
    animation.on_tick(state.value)
end

--- @param opt AnimationOption
M.setup = function(opt)
    opt.__tick = tick
    opt.__state.value = ""
end

return M