# HudlAutomation

## Tooling
I decided to create this automation set with robot framework.
Robot framework is an automation tooling only for python where one of his strongest points is the keywords usage to code test scripts.

I will use the robot keywords power to create gherkin style test cases without the need of installing any  additional tool.
Also Robot framework can use selenium library implicit to interact with the UI elements.

The test runner is also implicit, so no need to install any other external runner. Also it includes a report by default.

And the last reason, if creates powerful test scripts with simple code as we are going to show on this project.

Those are the reason together with my familiarity of this tool why I decided to use it.

## Strategy
I focused this e2e automated project as it would be something big planned for the future (adding more features, test users and so on) so I though thoroughly in a more complex architecture which can be simpler in smaller projects.

Also I though which tests to add in the e2e suite based on a hypothetically existing backend and frontend tests (I added those in the api and frontend folders) That doesn't mean those low level tests are working, neither perfect, they are witten between code and pseudocode way. I think they have enough context to understand the full picture of the feature coverage, not only at e2e level but also at lower levels (as ideal approach). Like this, e2e test suite is smaller, easier to maintain and focused in user flows more than small behaviours, trying also to follow the test pyramid approach. This is also an example about how we should automate tests, distributing load on every layer and avoiding falling in the mistake of testing everything by UI e2e tests (the peak of the testing pyramid).   

## Architecture
We will focus the architecture of the e2e tests, as the other tests are not the focus and they only give context to the e2e tests. 

- Init Robot file: All the set up before starting tests is happening on this file (load user and env configuration).
- Data: Data folder where the test data is located (users data, environment data etc.).
- Utils: It contains any util method to support tests (load json file). 
- Features: Feature test files are written in gherkin style (Given when then format) to be fully understandable by anyone also by non-technical roles.
The tests describe general behaviours and user flows, not specific actions, those are part of the keywords file, so in case of any change we don't need to change the behaviour only the keyword logic. Also tests should not refer to any gender.
- Keywords: It includes the logic of each step (keyword). The behaviours are specified in detail, including each action to fulfill it.
- Components: It contains every piece of code to build keywords ordered by components (pages, container etc.) they are isolated from keywords to build as much as keywords as we want with low dependency and high maintainability. In the same way, we are isolating selenium library in the high level or base components, so in the future could be replaced easily by any other tooling.  

## Envrioment set-up
Install locally python virtual environment.

Seting up virtual enviroment: (You must have python installed in advance)

``` python3 -m venv ./pyenvname```

Windows (with python path configured)
``` python -m venv c:\path\pyenvname ```

Activate virutalenv:

``` source pyenvname/bin/activate```

Windows:

``` <venv>\Scripts\activate.bat ```

## Installation
Run ```make install``` file

For windows probably it needs to run the comand inside make intall directly:

```pip install -r requirements.txt```

## Run tests
Run tests in the default browser.
``` make run ```

windows:
``` robot  --variable ENVIRONMENT:prod  --variable BROWSER_MODE:real --variable BROWSER:chrome  ./e2e  ```

Run tests in headless mode.
``` make run-headless ``` 

windows:
``` robot  --variable ENVIRONMENT:prod  --variable BROWSER_MODE:headless --variable BROWSER:chrome  ./e2e ```

## Clean code
There are two robot tools to perform clean and organized code, they are RobotTydy and Robocop. Used before committing the code on this project.

## Pending to be done: 
- Logout tests can be added on each test layer.
- Parallel test execution can be added with pabot (parallel runner tool for robot framework)
- Tests are running only in chrome but other browsers can be added as the execution is parametrized (Firebox, IE)
- Instead of installing tools in the virtualenvironment, we can also run a docker container, install tools and then run tests.  


