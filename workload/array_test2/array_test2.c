/* 
 * 简单的 __modsi3 实现，用于解决 rv32i -nostdlib 环境下缺失取模函数的问题 
 */
int __modsi3(int a, int b) {
    int neg = 0;
    if (a < 0) {
        a = -a;
        neg = 1;
    }
    if (b < 0) {
        b = -b;
    }
    unsigned int ua = (unsigned int)a;
    unsigned int ub = (unsigned int)b;
    unsigned int remainder = 0;
    for (int i = 31; i >= 0; i--) {
        remainder = (remainder << 1) | ((ua >> i) & 1);
        if (remainder >= ub) {
            remainder -= ub;
        }
    }
    return neg ? -(int)remainder : (int)remainder;
}

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

int a[4];
int *pa = a;
int main() {
  int *pb[4];
  int i;
  pb[0] = pa;
  pb[1] = pa;
  pb[2] = pa;
  pb[3] = pa;
  printInt(4);
  for (i = 0; i < 4; i++)
    pb[0][i] = i + 1;
  for (i = 0; i < 4; i++)
    printInt(pb[1][i]);

  for (i = 0; i < 4; i++)
    pb[2][i] = 0;
  for (i = 0; i < 4; i++)
    printInt(pb[3][i]);
  return judgeResult % Mod;  // 43
}