int judgeResult = 0;
const int Mod = 253;

void printInt(int x) {
  judgeResult ^= x;
  judgeResult += 173;
}

void printStr(const char *str) {
  for (const char *cur = str; *cur != 0; ++cur) {
    judgeResult ^= *cur;
    judgeResult += 521;
  }
}
int tak(int x, int y, int z) {
  if (y < x)
    return 1 + tak(tak(x - 1, y, z), tak(y - 1, z, x), tak(z - 1, x, y));
  else
    return z;
}

int main() {
  int a = 18;
  int b = 12;
  int c = 6;
  printInt(tak(a, b, c));
  return judgeResult % Mod;  // 186
}
