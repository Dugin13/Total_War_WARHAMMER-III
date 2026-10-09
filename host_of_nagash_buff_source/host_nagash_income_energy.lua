local host_faction = "wh3_dlc29_nag_host_of_nagash"
local buff_bundle = "copilot_host_nagash_income_energy_bundle"

local function apply_host_buff()
    cm:apply_effect_bundle(buff_bundle, host_faction, 0)
end

cm:add_first_tick_callback(apply_host_buff)
cm:add_faction_turn_start_listener_by_name(
    "copilot_host_nagash_income_energy",
    host_faction,
    apply_host_buff,
    true
)