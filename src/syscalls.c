#include <sys/stat.h>


//FreeRTOS implementation in FreeRTOS\portable\MemMang\heap_useNewlib_ST.c
// void *_sbrk(ptrdiff_t incr) 
// {
//     while(1);
//     return 0;
// }


int _fstat(int file, struct stat *st) {
    st->st_mode = S_IFCHR;

    return 0;
}

int _close(int file) {
    return -1;
}

int _isatty(int file) {
    return -1;
}

off_t _lseek(int file, off_t pos, int whence) {
    return -1;
}
