describe("Global page", ()=> {

  it("It contains login button and it goes to login page", ()=> {
    expect(loginButton).toExist();
    element(loginButton).click();
    expect(router.url).toBe(`/login`);
  });
});