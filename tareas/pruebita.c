#include <stdio.h>

int fuumo (int x, int n){
  if (n == 0){
    return (1.0 + 0.0 * x);
  } else if (n == 1) {
    return (2.0 * x);
  } else {
    return (2.0 * x * fuumo(x, n-1) - 2.0 * (n-1) * fuumo(x, n-2));
  }
}

int main(){
  int x, n;
  scanf("%d", &x);
  scanf("%d", &n);
  printf("%d", fuumo(x,n));
  return 0;
}
