require 'appium_lib'
require 'cucumber'
require 'pry'
require_relative '../../lib/budget_app'

def opts
  {
   caps: {
      platformName: "Android",
      deviceName: "pixelemulator",
      app: ""
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
