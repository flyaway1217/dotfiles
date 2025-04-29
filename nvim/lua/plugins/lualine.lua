return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- 推荐加上图标插件
    event = "VeryLazy", -- 延迟加载，加速启动
    opts = {
      options = {
        theme = "auto", -- 自动适配你用的主题
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } }, -- 显示相对路径
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}

