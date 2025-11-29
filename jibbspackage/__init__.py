"""jibbspackage init module.

This is a minimal example package intended for publishing to CodeArtifact.
"""

from .simple import hello

__all__ = ["__version__", "hello"]

__version__ = "0.1.0"
