# Comments should render in the comment color.
# Numbers should render in dark pink.

from dataclasses import dataclass


@dataclass
class ThemeSample:
    id: int
    name: str
    active: bool
    retries: int


MAX_ITEMS = 42
TIMEOUT_SECONDS = 1.5
HEX_VALUE = 0xFF


def format_sample(sample: ThemeSample) -> str:
    """Render a sample string for theme color preview."""
    if sample.active and sample.retries > 0:
        return f"{sample.name}#{sample.id}:{TIMEOUT_SECONDS}:{HEX_VALUE}"
    return "inactive"


sample = ThemeSample(id=7, name="Commander Gold", active=True, retries=3)
print(format_sample(sample), MAX_ITEMS)
