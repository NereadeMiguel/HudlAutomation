describe("Check email page", ()=> {

  it("It contains back button and it goes to previous page", ()=> {
    expect(backButton).toExist();
    element(backButton).click();
    expect(router.url).toBe(`/login`);
  });

  it("It includes signup link and it goes to signup page", ()=> {
      expect(emailField).toExist();
      element(backButton).click();
      expect(router.url).toBe(`/register/signup`);
  });

  it("It includes check email message", ()=> {
        // h3 title header style
        expect(h3.textContent).toContain(mainTitleString);
        // two paragrahgs
        expect(p1.textContent).toContain(p1String);
        expect(p2.textContent).toContain(p2String);
      });
});

