"""Tests for the simple module."""

import pytest

from jibbspackage.simple import goodbye, hello


@pytest.mark.unit
def test_goodbye_default():
    """Test goodbye function with default argument."""
    assert goodbye() == "Goodbye, world!"


@pytest.mark.unit
def test_goodbye_custom():
    """Test goodbye function with custom name."""
    assert goodbye("Alice") == "Goodbye, Alice!"


@pytest.mark.unit
def test_hello_default():
    """Test hello function with default argument."""
    assert hello() == "Hello, world!"


@pytest.mark.unit
def test_hello_custom():
    """Test hello function with custom name."""
    assert hello("Alice") == "Hello, Alice!"
