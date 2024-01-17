vim.keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require'dap'.step_out()<CR>")
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")


require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

-- local dap = require('dap')
--     dap.configurations.python = {
--       {
--         type = 'python';
--         request = 'launch';
--         name = "Launch file";
--         program = "${file}";
--         pythonPath = function()
--           return '/usr/bin/python'
--         end;
--       },
--     }

-- dap-ui
local dap, dapui = require("dap"), require("dapui")
dapui.setup()
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--   dapui.close()
-- end

require('dap-python').resolve_python = function()
    return "/usr/local/bin/python3"
end
