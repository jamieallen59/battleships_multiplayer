Feature: Starting the game
	In order to play Battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Registering
		Given I am on the homepage
		And I follow "New Game"
		When I fill in "Name" with "Jamie"
		And I press "Submit"
		Then I should see "Welcome to battleships Jamie"
