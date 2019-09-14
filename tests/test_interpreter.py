import collections
import os
import tempfile
import unittest
from pathlib import Path

from sassy import Interpreter


class TestInterpreter(unittest.TestCase):
    def setUp(self):
        print(Interpreter)

    def test_something(self):
        self.assertEqual('hi', 'hi')