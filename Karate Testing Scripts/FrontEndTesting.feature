Feature: Frontend Interactivity Testing

	Background: 
		* configure driver = { type: 'chrome', showDriverLog: true }
		
	Scenario: Test to see if account creation works
		Given driver "https://localhost:8080/"
		And input('input[name=registerName]','testName')
		And input('input[name=registerPassword]','testPassword')
		When submit().click("input[name='handleRegister'")
		Then match html(' ##Success message goes here')
	
	
	Scenario: Test to see if you can login to an account
		Given driver "https://localhost:8080/"
		And input('input[name=loginName]','testName')
		And input('input[name=loginPassword]','testPassword')
		When submit().click("input[name='handleLogin'")
		Then match html(' ##Success message goes here')
		
	Scenario: Login to an account with wrong username
		Given driver "https://localhost:8080/"
		And input('input[name=loginName]','testNameButWrong')
		And input('input[name=loginPassword]','testPassword')
		When submit().click("input[name='handleLogin'")
		Then match html(' ##Failure message goes here')
		
	Scenario: Login to an account with wrong password
		Given driver "https://localhost:8080/"
		And input('input[name=loginName]','testName')
		And input('input[name=loginPassword]','testPassword')
		When submit().click("input[name='handleRegister'")
		Then match html(' ##Failure message message goes here')
		



#Fields: loginName, registerName, loginPassword, registerPassword, handleRegister, handleLogin
