describe("Login help page", ()=> {

  it("It contains email field", ()=> {
    expect(emailField).toExist();
  });
  it("It contains password field", ()=> {
      expect(passwordField).toExist();
    });
  it("It contains login button", ()=> {
        expect(LoginButton).toExist();
      });
  it("It shows invalid email / password message with wrong password", ()=> {
          inputValue(emailField, existingEmail)
          inputValue(passwordField, wrongPassword)
          element(loginButton).click();
          expect(ErrorDisplayConTainer).toExist();
          expect(QuestionMarkIcon).toExist();
          expect(p.textContent).toContain(InvalidEmailPasswordString);

  it("It shows invalid email / password message with wrong email", ()=> {
            inputValue(emailField, unexistingEmail)
            inputValue(passwordField, correctPassword)
            element(loginButton).click();
            expect(ErrorDisplayConTainer).toExist();
            expect(QuestionMarkIcon).toExist();
            expect(p.textContent).toContain(InvalidEmailPasswordString);
  });

  it("It contains remember me checkbox unchecked and it can be checked", ()=> {
        expect(rememberCheckbox.checked).toBe(false)
        element(rememberCheckbox).click();
        expect(rememberCheckbox.checked).toBe(true)
      });

  it("It contains need help link and it goes to reset password page", ()=> {
          expect(NeedHelpLink).toExist();
          element(NeedHelpLink).click();
          expect(router.url).toBe(`/login/help`);
  });

  it("The email field is perisistent to help page", ()=> {
            inputValue(emailField, existingEmail)
            element(NeedHelpLink).click();
            expect(router.url).toBe(`/login/help`);
            expect(emailField.value).toContain(existingEmail);
  });

  it("It contains login with an organization button and it goes to login sso", ()=> {
            expect(LoginOrgButton).toExist();
            element(LoginOrgButton).click();
            expect(router.url).toBe(`/app/auth/login/organization`);
    });

  it("It contains signup button and it goes to signup page", ()=> {
     expect(SignUpButton).toExist();
     element(SignUpButton).click();
     expect(router.url).toBe(`register/signup`);
  });

  it("It containfs back button and it goes to previous page", ()=> {
       expect(backButton).toExist();
       element(backButton).click();
       // it shoule be main base url
       expect(router.url).toBe(``);
  });
});