
class TestLogin(unittest.TestCase):

    def test_success_request(self):
        body = json.dumps({"UserEmail": validEmail})
        req = request.post(
            url=BASE_URL + '/app/auth/idp/lookup',
            data=body
        )
        self.assertEqual(req.status_code, 200)

    def test_failed_request(self):
        body = json.dumps({"UserEmail": invalidEmail})
        req = request.post(
            url=BASE_URL + '/app/auth/idp/lookup',
            data=body
        )
        self.assertEqual(req.status_code, 401)


