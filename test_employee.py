import unittest
from employee import Employee
from unittest.mock import patch # decorator or content manager


class  TestEmploye(unittest.TestCase):

    @classmethod
    def setUpClass(cls): # ex for populating database for once
        print('setupClass')

    @classmethod
    def tearDownClass(cls): # doing at the end for once
        print('teardownClass')

    def setUp(self):
        print('setup')
        self.emp_1 = Employee ( 'Corey', 'Schafer', 50000 )
        self.emp_2 = Employee ( 'Sue', 'Smith', 60000 )

    def tearDown(self):
        print('teardown')

    def test_email(self):
        print('test_email')
        self.assertEqual(self.emp_1.email, 'Corey.Schafer@email.com')
        self.assertEqual(self.emp_2.email, 'Sue.Smith@email.com')

        self.emp_1.first = 'John'
        self.emp_2.first = 'Jane'

        self.assertEqual(self.emp_1.email,'John.Schafer@email.com')
        self.assertEqual(self.emp_2.email, 'Jane.Smith@email.com')

    def test_fullname(self):
        print('test|_fullname')
        self.assertEqual ( self.emp_1.fullname, 'Corey Schafer' )
        self.assertEqual ( self.emp_2.fullname, 'Sue Smith' )

        self.emp_1.first = 'John'
        self.emp_2.first = 'Jane'

        self.assertEqual ( self.emp_1.fullname, 'John Schafer' )
        self.assertEqual ( self.emp_2.fullname, 'Jane Smith' )

    def test_apply_raise(self):
        print('test_apply_raise')
        self.emp_1.apply_raise()
        self.emp_2.apply_raise()

        self.assertEqual(self.emp_1.pay, 52500)
        self.assertEqual(self.emp_2.pay, 63000)

    def test_monthly_schedule(self):
        with patch('employee.requests.get') as mocked_get:
            mocked_get.return_value.ok = False
            # mocked_get.return_value.text = 'Success'

            schedule =  self.emp_2.monthly_schedule('June')
            mocked_get.assert_called_with('http://company.com/Smith/June')
            self.assertEqual(schedule, 'Bad Response!')


if __name__ == '__main__':
    unittest.main()

