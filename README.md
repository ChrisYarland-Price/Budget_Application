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

#### Chris

#### Luke

#### Martha

#### James
