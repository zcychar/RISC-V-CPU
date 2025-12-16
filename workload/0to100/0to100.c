int main() {
    int sum = 0;
    for (int i = 0; i <= 100; i++) {
        sum += i;
    }
    asm("ebreak");  // 添加 ebreak 指令退出
    return sum;
}