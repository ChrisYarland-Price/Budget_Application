require 'appium_lib'
require 'cucumber'
require 'pry'
require 'require_all'
require_relative '../../lib/budget_app'

def opts
  {
   caps: {
      platformName: "Android",
      deviceName: "pixelemulator",
      app: ENV["BUDGETWATCH_FILE_PATH"]
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
