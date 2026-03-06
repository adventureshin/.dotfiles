return {
  {
    "mrcjkb/rustaceanvim",
    opts = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            completion = {
              autoimport = {
                enable = true,
              },
            },
            imports = {
              granularity = {
                group = "module",
              },
              prefix = "self",
            },
          },
        },
      },
    },
  },
}
