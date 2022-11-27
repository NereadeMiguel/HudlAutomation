describe("Login help page", ()=> {

  it("It contains email field", ()=> {
    expect(emailField).toExist();
  });

  it("It contains email help information", ()=> {
      // h3 title header style
      expect(h3.textContent).toContain(mainTitleString);
      // three paragrahgs with subtitles
      expect(h4.textContent).toContain(p1TitleString);
      expect(p1.textContent).toContain(p1String);
      expect(h4.textContent).toContain(p2TitleString);
      expect(p2.textContent).toContain(p2String);
      expect(h4.textContent).toContain(p3TitleString);
      expect(p3.textContent).toContain(p3String);
    });

  it("It contains send password button disabled", ()=> {
        expect(sendPasswordButton).toExist();
        expect(sendPasswordButton.enabled).toBe(false)
  });

  it("It enables send password button after typing email", ()=> {
          inputValue(emailField, emailValue)
          expect(sendPasswordButton.enabled).toBe(true)
    });

  it("It shows invalid email message", ()=> {
        inputValue(emailField, invalidEmailFormat)
        element(sendPasswordButton).click();
        expect(ErrorDisplayConTainer).toExist();
        expect(QuestionMarkIcon).toExist();
        expect(p.textContent).toContain(InvalidEmailString);
      });

  it("It shows unexiting email message", ()=> {
        inputValue(emailField, unexistingEmailFormat)
        element(sendPasswordButton).click();
        expect(ErrorDisplayConTainer).toExist();
        expect(QuestionMarkIcon).toExist();
        expect(p.textContent).toContain(UnexistingEmailString);
  });

  it("It contains signup button and it goes to signup page", ()=> {
     expect(SignUpButton).toExist();
     element(SignUpButton).click();
     expect(router.url).toBe(`/register/signup`);
  });

  it("It contains back button and it goes to previous page", ()=> {
       expect(backButton).toExist();
       element(backButton).click();
       expect(router.url).toBe(`/login`);
  });

});