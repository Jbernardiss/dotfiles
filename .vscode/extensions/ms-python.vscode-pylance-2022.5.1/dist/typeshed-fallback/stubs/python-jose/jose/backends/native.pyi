from typing import Any

from .base import Key as Key

def get_random_bytes(num_bytes): ...

class HMACKey(Key):
    HASHES: Any
    prepared_key: Any
    def __init__(self, key, algorithm) -> None: ...
    def sign(self, msg): ...
    def verify(self, msg, sig): ...
    def to_dict(self): ...
