-- fetch the dap plugin
local dap = require('dap')
local dapgo = require('dap-go').setup()

require("nvim-dap-virtual-text").setup()
local dapui = require('dapui')
dapui.setup()

local dap, dapui = require("dap"), require("dapui")
-- Dap Fires events Before and After, Trigger dap UI when we see them
dap.listeners.after.event_initialized["dapui_config"] = function()
 dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

dap.adapters.delve = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = { 'dap', '-l', '127.0.0.1:${port}'},
    }
}

-- launch configurations
dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "${file}",
  },{
    type = "delve",
    name = "Debug Tests",
    request = "launch",
    mode = "test",
    program = "${file}"
    
  }
}
