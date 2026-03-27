// Comments should render in the comment color.
// Numbers should render in dark pink.

type Status = "idle" | "running" | "done";

interface ThemeSample {
  id: number;
  name: string;
  active: boolean;
  retries: number;
  status: Status;
}

const MAX_ITEMS = 42;
const TIMEOUT_MS = 1500;
const PI = 3.14159;
const HEX_VALUE = 0xff;

function formatSample(sample: ThemeSample): string {
  if (sample.active && sample.retries > 0) {
    return `${sample.name}#${sample.id}:${sample.status}:${PI}:${HEX_VALUE}`;
  }

  return "inactive";
}

const sample: ThemeSample = {
  id: 7,
  name: "Commander Gold",
  active: true,
  retries: 3,
  status: "running"
};

console.log(formatSample(sample), MAX_ITEMS, TIMEOUT_MS);
