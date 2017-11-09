require_rel 'pages'

module BudgetApp

  def main_page
    MainPage.new
  end

  def budget_page
    BudgetPage.new
  end

  def calendar_page
    CalendarPage.new
  end

  def transaction_page
    TransactionPage.new
  end

  def settings_page
    SettingsPage.new
  end

  def view_expense_page
  	ViewExpensePage.new
  end

  def edit_expense_page
  	EditExpensePage.new
  end

  def import_export_page
    ExportPage.new
  end

end