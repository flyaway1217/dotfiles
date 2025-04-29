return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        mode = "buffers", -- 每个buffer作为一个tab展示
        separator_style = "slant", -- 美化分隔线
        diagnostics = "nvim_lsp", -- 在tab上显示LSP诊断信息
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true,
          },
        },
      },
    },
  },
}

