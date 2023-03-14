return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
    {
      "projekt0n/github-nvim-theme", tag = "v0.0.7",
      config = function()
        require('github-theme').setup({})
      end,
    },
    {
      "leoluz/nvim-dap-go",
      config = function()
        require('dap-go').setup({
          dap_configurations = {
            {
              -- Must be "go" or it will be ignored by the plugin
              type = "go",
              name = "Attach remote",
              mode = "remote",
              request = "attach",
            },
          },
          -- delve configurations
          delve = {
            -- time to wait for delve to initialize the debug session.
            -- default to 20 seconds
            initialize_timeout_sec = 20,
            -- a string that defines the port to start delve debugger.
            -- default to string "${port}" which instructs nvim-dap
            -- to start the process in a random available port
            port = "${port}"
          },
        })
      end,
    }
}
