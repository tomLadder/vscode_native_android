#include <android/log.h>

#define PRINT(x) __android_log_print(ANDROID_LOG_DEBUG, "SOMETAG", x)

int main() {

    PRINT("TEST");

    return 0;
}