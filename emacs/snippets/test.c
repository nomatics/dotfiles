#include <stdio.h>
#include <sys/klog.h>
#include <string.h>


int main() {
  char buffer[4*1024];
  memset(buffer, 0, sizeof(buffer));
  int ret = klogctl(9, buffer, sizeof(buffer));
  if(ret < 0)
    return -1;
  if(ret == 0)
    printf("no data\n");
  if(ret > 0) {
    printf("%s\n", buffer);
  }

  return 0;
}

