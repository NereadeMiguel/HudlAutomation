describe("Global page", ()=> {

  it("It contains email field", ()=> {
    expect(emailField).toExist();
  });
  it("It contains back button and it goes to previous page", ()=> {
      expect(backButton).toExist();
      element(backButton).click();
      expect(router.url).toBe(`/login`);
    });

  it("It contains login button disabled", ()=> {
        expect(emailField).toExist();
  });

  it("It enables login button after typing email", ()=> {
        inputValue(emailField, emailValue)
        expect(loginButton.enabled).toBe(true)
  });

  it("It shows invalid email message", ()=> {
      expect(emailField).toExist();
      inputValue(emailField, invalidEmailFormat)
      element(loginButton).click();
      expect(bubbleInvalidEmail).toExist();
  });

  it("Unexisting organization email it redirects to login page", ()=> {
    expect(emailField).toExist();
    inputValue(emailField, unexistingEmail)
    element(loginButton).click();
    expect(router.url).toBe(`/login`);
    expect(UnexistingEmailInOrganizationMesssage).toExist()
});

  it("It shows login with email and password button", ()=> {
     expect(emailField).toExist();
  });

  it("It does not include singup link", ()=> {
       expect(signupButton).toBeFalsy();
  });
});