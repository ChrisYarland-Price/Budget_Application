require 'appium_lib'
require 'cucumber'
require 'pry'
require_relative '../../lib/budget_app'

def opts
  {
   caps: {
      platformName: "Android",
      deviceName: "pixelemulator",
<<<<<<< HEAD
      app: ""
=======
      app: ENV["BUDGETWATCH_FILE_PATH"]
>>>>>>> b0605967aecee52ba8a7b14365342f57cf6b7e89
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
