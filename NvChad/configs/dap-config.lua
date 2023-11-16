local dap = require'dap'
local dapui = require'dapui'

require'mason-nvim-dap'.setup{
  automatic_setup = true,
  handlers = {},
  ensure_installed = {
    'js_debug_adapter',
  }
};

dapui.setup{}

dap.listeners.after.event_initialized['dapui_config'] = dapui.open
dap.listeners.before.event_terminated['dapui_config'] = dapui.close
dap.listeners.before.event_exited['dapui_config'] = dapui.close

require'dap-go'.setup{}
