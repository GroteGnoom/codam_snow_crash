#include <stdio.h>
#include <string.h>
int main() {
    char *str = "f4kmm6p|=pnDBDu{"; //too short?
    for (int i = 0; i < strlen(str); i++) {
        printf("%c", str[i] - i);
    }
}
