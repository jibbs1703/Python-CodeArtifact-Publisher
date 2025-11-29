"""simple module for the jibbspackage package."""


def hello(name: str = "world") -> str:
    """Return a friendly greeting.

    Args:
        name: Name to include in the greeting.

    Returns:
        A greeting string.
    """
    return f"Hello, {name}!"


def goodbye(name: str = "world") -> str:
    """Return a friendly farewell.

    Args:
        name: Name to include in the farewell.

    Returns:
        A farewell string.
    """
    return f"Goodbye, {name}!"

