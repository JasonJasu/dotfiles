return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
    -- animations
    {
      "echasnovski/mini.animate",
      event = "VeryLazy",
      opts = function(_, opts)
        opts.scroll = {
          enable = false,
        }
      end,
    },

    -- buffer line
    {
      "akinsho/bufferline.nvim",
      event = "VeryLazy",
      keys = {
        { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
        { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
      },
      opts = {
        options = {
          mode = "tabs",
          -- separator_style = "slant",
          show_buffer_close_icons = false,
          show_close_icon = false,
        },
      },
    },

    -- statusline
    {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      opts = {
        options = {
          -- globalstatus = false,
          theme = "solarized_dark",
        },
      },
    },

    -- filename
    {
      "b0o/incline.nvim",
      dependencies = { "craftzdog/solarized-osaka.nvim" },
      event = "BufReadPre",
      priority = 1200,
      config = function()
        local colors = require("solarized-osaka.colors").setup()
        require("incline").setup({
          highlight = {
            groups = {
              InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
              InclineNormalNC = { guifg = colors.violet500, guibg = colors.base03 },
            },
          },
          window = { margin = { vertical = 0, horizontal = 1 } },
          hide = {
            cursorline = true,
          },
          render = function(props)
            local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
            if vim.bo[props.buf].modified then
              filename = "[+] " .. filename
            end

            local icon, color = require("nvim-web-devicons").get_icon_color(filename)
            return { { icon, guifg = color }, { " " }, { filename } }
          end,
        })
      end,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
      #include<stdio.h>
        #define o/*Ichijou*/(i&95)/*
          if(($code=q'if(@i=split//,"uywvxzton
          srlmpkjqeaihdcfgb"){if(@o=map{"(\$a,\$b)=(\$
        x=~/^\\\\s*(".(pop@i).")".substr($_,1,-1)."\\\\s*
        (.*)\$/si)"}(grep{/"([-a-z]+)"/}split/[^-\"a-z]/,q[*/
        void main(int i,char**l){while((i=getchar ())+1){if(((i
         >64&&i<91)||(i>0x60&&i<123))?printf("%c%s"  "\40",i,o<74?
        o-69?o-65?o-73?o-72?o-68?o-   67?70-o?o-71     ?"ravo":/*l
       ,d*/"olf":"oxtrot":/*  uguu.   org*/"harlie":"elta":"otel":
       "ndia":"lpha":"cho":o<85?o-84?o-79?o-78?o-83?o-   82?o-76?o
    -77?o-80?o-75?o-74?    "uebec":  /*2006  6/25*/   "uliet":
  "ilo":"apa":"ike":       "ima"/*   c*/:   "omeo"    :/**/
  "ierra":"ovember":       "scar":   ((     "ango\"    )):85-
    o?o-89?o-87?o-86?o       -0x58U?           "ulu"    :"-ray":
       "ictor":"hiskey":       "ankee"           /*>.>       1562*/:
      "niform"):putchar(i)     ){}}}/*           ])){w        hile($
    x=<>){if(chomp$x){while(    ""ne$x            ){i         f($i=-1
   ){while(++$i<=$#o&&$i>=0){i   f(e                         val$o[$i
   ]){if((print$a),($x=$b),$i=-                             1){}}}}if
      ($i>$#     o){if((print(su                          bstr$x,0,1)
),($        x=substr$x,1))                     {}}} if(
pr          int"\n"){}}}}}')             =~s/[
              ]//sgo){if(   eval$code){}}
#*/

        Born to Sleep Awake is Fuck
        作業Never Work 1989 I am Sleeper Soldier
        410,757,864,530 Years Eternal Rest
 ]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        },
        },
      },
    },
  },
}
