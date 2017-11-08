require_relative "pages/main_page"
require_relative "pages/budget_page"

module BudgetApp

  def main_page
    MainPage.new
  end

  def budget_page
    BudgetPage.new
  end

end