return {
  run = function(config)
    local modules = require("stabline.statusline.modules")

    return table.concat {
      modules.mode(),
    }
  end
}
