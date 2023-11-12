"""Module to define tests"""


from operations import add


def test_add():
    """Test to ensure"""
    a, b = 1, 3
    assert (add(a, b)) == 4
    assert (add(a, a)) == 2 * a
    assert (add(a, -a)) == 0
