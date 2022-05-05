**Feature** Recipe Search

**Scenario** User enters valid ingredients into the text area and searches for recipes

**Given** the user has entered ingredients present in the recipes in the text area

**When** the User clicks 'Search Recipes', the application navigates to the results screen and displays the relevant recipes.

<br>

**Feature** Recipe Search

**Scenario** User enters invalid ingredients into the text area and searches for recipes

**Given** the user has entered ingredients not present in the recipes in the text area

**When** the User clicks 'Search Recipes', the application navigates to the results screen and displays the message 'No Matching Results'

<br>

**Feature** Recipe Search

**Scenario** User enters nothing into the text area and searches for recipes

**Given** the user has entered nothing in the recipes in the test area

**When** the User clicks 'Search Recipes', the application stays on the page and displays the message 'Please enter ingredients to search with'.

<br>
