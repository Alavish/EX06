func testSearch() throws {

            //Test 1
    //Set up with error, very basic
    
    override func setUpWithError() throws {
        
        let app = XCUIApplication()
        
        app.launch()
        super.setUp()
        
        continueAfterFailure = false
        
    }
    
    
    //Test 2
    // Tear down with error ,basic
    
    override func tearDownWithError() throws {
        
        let app = XCUIApplication()
        
        app.launch()
        super.tearDown()
        
        continueAfterFailure = true;
        
    }

        
        //Searches for US in search bar
        let app = XCUIApplication()
        
        app.launch()
        
        app.buttons["Search"].tap()
        
        let textField = app.textFields["Search"]
        textField.typeText("United States")
        
        
        
        //Searches for country off screen
        let app2 = XCUIApplication()
        
        app2.launch()
        
        app2.buttons["Search"].tap()
        
        let textField2 = app.textFields["Search"]
        textField2.typeText("Italy")
        
        
        
        
        //Searches using special character
        //nothing will be shown
        let app3 = XCUIApplication()
        
        app3.launch()
        
        app3.buttons["Search"].tap()
        
        let textField3 = app.textFields["Search"]
        textField2.typeText("$")
        
        
        
        //Searches for lowercase
        //still shows result
        let app4 = XCUIApplication()
        
        app4.launch()
        
        app4.buttons["Search"].tap()
        
        let textField4 = app.textFields["Search"]
        textField4.typeText("mexico")
        
        
        
        //Searches for uppercase
        //still shows results
        
        let app5 = XCUIApplication()
        
        app5.launch()
        
        app5.buttons["Search"].tap()
        
        let textField5 = app.textFields["Search"]
        textField5.typeText("GERMANY")
        clearTextSearchField5.tap()
        
    }
    
    
    
    
    
    
    
    
    //Tests the buttons Update functions, along with other options it has
    //If the record was working properly I would test each option menu down the list. for an example for growth of cases Id test the share button for that and so on.
    //with more syntax knwodlege Id really like to test the canvas styles with buttons switching the phone horizontal etc. That allows more functionality at times.
    
