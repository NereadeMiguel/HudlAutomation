
class TestLogin(unittest.TestCase):

    def test_login_success(self):
        body = json.dumps({"email": validEmail, "password": validPassword)
        req = request.post(
            url=BASE_URL + 'login',
            data=body
            )
        self.assertEqual(req.status_code, 200)
        self.assertEqual((req.json()["success"]), 'true')

    def test_login_wrong_email(self):
        body = json.dumps({"email": invalidEmail, "password": validPassword)
    req = request.post(
        url=BASE_URL + 'login',
        data=body
    )
    self.assertEqual(req.status_code, 200)
    self.assertEqual((req.json()["success"]), 'false')

    def test_login_empty_field(self):
    body = json.dumps({"email": "", "password": "")
    req = request.post(
        url=BASE_URL + 'login',
        data=body
    )
    self.assertEqual(req.status_code, 200)
    self.assertEqual((req.json()["success"]), 'false')


