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

int f[2801];
int main() {
  int a = 10000;
  int b = 0;
  int c = 2800;
  int d = 0;
  int e = 0;
  int g = 0;

  for (; b - c != 0;)
    f[b++] = a / 5;
  for (;; e = d % a) {
    d = 0;
    g = c * 2;
    if (g == 0)
      break;

    for (b = c;; d = d * b) {
      d = d + f[b] * a;
      f[b] = d % --g;
      d = d / g--;
      if (--b == 0)
        break;
    }

    c = c - 14;
    printInt(e + d / a);
  }

  printStr("\n");
  return judgeResult % Mod;  // 137
}