# Mini project - Budget Mobile Application Testing
## The task

We were tasked with testing a mobile app, in this instance it was **Budget Watch**. Using the **AGILE** methodology, we planned how to test the app; determined by the user stories on our kanban board.

As a group, we discussed how our Kanban board should be set out. The board consited of the following columns:

* **Priorities**: 1 being high and 3 being low
* Execute
* Review
* **Definition of done**: has the code been peer reviewed and has it been indented properly, implementing DRY.

The user stories assisted us in creating our test cases/conditions, which were priortised from 1-3; 1 being the test which tests the most functional aspect of the website. Each member of the group took responsibilty on which user story they wanted to complete.

## Task undertaken by each member
#### Abass and Liam
We pair-programmed the transactions feature and the date range feature for budgets. Liam wrote the tests and POMs and Abass got all the elements from the pages and interacted with the app to see the app behaviour.

We installed the 'require_all' gem so that no one had to require their POMs every time they made a new one. Also we created a before hook in the support folder. The before hook used the methods we wrote for creating a new transaction so that other members of the group could test other aspects of the app.  

Our main challenge during this project was when we were creating a new transaction for a budget, we wanted to check that the budget dropdown box was prepopulated with the name of the budget that we were attributing the transaction to. However, when we tried finding the element on the page, it could not be found by its id or xpath when we ran the tests. We overcame this by simply checking whether the name of the budget was found on the page somewhere which did pass.

Another challenge we came across was when we were testing changing the date range for budgets. We could not get the app to scroll to select an end date by using either the ```scroll_to``` or ```scroll_to_exact``` methods. This was because there wasn't any unique text that was appropriate to scroll to since those methods require text as an argument. We solved this problem by using ```Appium::TouchAction.new.swipe(start_x: 144, start_y: 1634, end_x: 144, end_y: 149).perform``` to simulate a person scrolling down so that we could then select an end date.

#### Chris && Luke
Working together we created the tests to change the receipt quality. This was fairly simple. 

We created the Tests to create a resource, the largest challenge during this test was that appium was not able to find the RESOURCES tab on the transactions page. We mitigated this by selecting the tab through the coordinates. The rest of that test was fairly straightforward.

We created the back button test, which would test whether pressing back twice from the transactions page after having selected a budget would land us back on the homepage. This failed and it seems like the only way to do so is to use 
```  $driver.back() ```
three times and not twice.  

#### Martha

#### James
worked on export page, creating POM and feature, along with all the tests created. worked as team leader creating test cases and guiding the project and the team. also through motivation and train videos.
