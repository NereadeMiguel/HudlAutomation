
class TestLogin(unittest.TestCase):

    def test_reset_success(self):
        body = json.dumps({"UserName": validEmail})
        req = request.post(
            url=BASE_URL + '/reset/start',
            data=body
        )
        self.assertEqual(req.status_code, 200)
        self.assertEqual((req.json(), 'true')

    def test_reset_failed(self):
        body = json.dumps({"UserName": invalidEmail})
        req = request.post(
            url=BASE_URL + '/reset/start',
            data=body
        )
        self.assertEqual(req.status_code, 200)
        self.assertEqual((req.json(), 'false')


