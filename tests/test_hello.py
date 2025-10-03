# tests/test_hello.py
from src.hello import add


def test_add():
    assert add(1, 1) == 2
