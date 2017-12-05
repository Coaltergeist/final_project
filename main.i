# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 55 "main.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 76 "myLib.h"
extern unsigned short *videoBuffer;
# 99 "myLib.h"
enum {BLACKID=(256-2), WHITEID};
extern unsigned short colors[2];


typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();
void loadPalette(const unsigned short * palette);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 176 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int isActive;
} ANISPRITE;
# 220 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 231 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 271 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 365 "myLib.h"
typedef struct
{
    int row;
    int col;
    int rdel;
    int cdel;
    int size;
    u16 color;
    int AI_STATE;
} MOVOBJ;
# 56 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 57 "main.c" 2
# 1 "bg.h" 1
# 22 "bg.h"
extern const unsigned short bgTiles[7200];


extern const unsigned short bgMap[1024];


extern const unsigned short bgPal[256];
# 58 "main.c" 2
# 1 "bg2.h" 1
# 22 "bg2.h"
extern const unsigned short bg2Tiles[2272];


extern const unsigned short bg2Map[2048];


extern const unsigned short bg2Pal[256];
# 59 "main.c" 2
# 1 "bg3.h" 1
# 22 "bg3.h"
extern const unsigned short bg3Tiles[528];


extern const unsigned short bg3Map[1024];


extern const unsigned short bg3Pal[256];
# 60 "main.c" 2
# 1 "bg3_2.h" 1
# 22 "bg3_2.h"
extern const unsigned short bg3_2Tiles[1424];


extern const unsigned short bg3_2Map[1024];


extern const unsigned short bg3_2Pal[256];
# 61 "main.c" 2
# 1 "startScreen.h" 1
# 21 "startScreen.h"
extern const unsigned short startScreenBitmap[19200];


extern const unsigned short startScreenPal[256];
# 62 "main.c" 2
# 1 "howtoScreen.h" 1
# 21 "howtoScreen.h"
extern const unsigned short howtoScreenBitmap[19200];


extern const unsigned short howtoScreenPal[256];
# 63 "main.c" 2

# 1 "sound.h" 1
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;

SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void muteSound();
void unmuteSound();
void stopSound();
void pauseSound();
void unpauseSound();

void setupInterrupts();
void interruptHandler();
# 65 "main.c" 2
# 1 "song01.h" 1
# 20 "song01.h"
extern const unsigned char song01[1302562];
# 66 "main.c" 2
# 1 "laser.h" 1
# 20 "laser.h"
extern const unsigned char laser[1180];
# 67 "main.c" 2
# 1 "loseScreen.h" 1
# 21 "loseScreen.h"
extern const unsigned short loseScreenBitmap[19200];


extern const unsigned short loseScreenPal[256];
# 68 "main.c" 2
# 1 "text.h" 1

void drawChar3(int row, int col, char ch, unsigned short color);
void drawString3(int row, int col, char *str, unsigned short color);


void drawChar4(int row, int col, char ch, unsigned char colorIndex);
void drawString4(int row, int col, char *str, unsigned char colorIndex);
# 69 "main.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 70 "main.c" 2
# 1 "title.h" 1
# 20 "title.h"
extern const unsigned char title[81625];
# 71 "main.c" 2
# 1 "hurt.h" 1
# 20 "hurt.h"
extern const unsigned char hurt[3734];
# 72 "main.c" 2
# 1 "coin.h" 1
# 20 "coin.h"
extern const unsigned char coin[10969];
# 73 "main.c" 2
# 1 "winScreen.h" 1
# 21 "winScreen.h"
extern const unsigned short winScreenBitmap[19200];


extern const unsigned short winScreenPal[256];
# 74 "main.c" 2
# 1 "victory.h" 1
# 20 "victory.h"
extern const unsigned char victory[756064];
# 75 "main.c" 2
# 1 "loseSong.h" 1
# 20 "loseSong.h"
extern const unsigned char loseSong[455616];
# 76 "main.c" 2
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 1 3
# 10 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 11 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 1 3
# 15 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/newlib.h" 1 3
# 16 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/config.h" 1 3



# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/ieeefp.h" 1 3
# 5 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/config.h" 2 3
# 17 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 2 3
# 12 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3



# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 211 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 323 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 16 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3

# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 1 3
# 13 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/_ansi.h" 1 3
# 14 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 1 3
# 12 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_types.h" 1 3






# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 1 3
# 26 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 8 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/_types.h" 2 3
# 13 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3


typedef long _off_t;







typedef int __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 3
typedef int _ssize_t;






# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 352 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 18 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/stdlib.h" 1 3
# 19 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 2 3
# 27 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;
# 58 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
extern int __mb_cur_max;



void abort (void) __attribute__ ((noreturn));
int abs (int);
int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, int (* _compar) (const void *, const void *))



                                                         ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((noreturn));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);
long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *, const char *, size_t);
int _mbtowc_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *, const char *, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *, const char *, size_t, _mbstate_t *);
size_t wcstombs (char *, const wchar_t *, size_t);
size_t _wcstombs_r (struct _reent *, char *, const wchar_t *, size_t, _mbstate_t *);
# 111 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
void qsort (void * __base, size_t __nmemb, size_t __size, int(*_compar)(const void *, const void *));
int rand (void);
void * realloc (void * __r, size_t __size) ;



void srand (unsigned __seed);
double strtod (const char *__n, char **__end_PTR);
double _strtod_r (struct _reent *,const char *__n, char **__end_PTR);
float strtof (const char *__n, char **__end_PTR);






long strtol (const char *__n, char **__end_PTR, int __base);
long _strtol_r (struct _reent *,const char *__n, char **__end_PTR, int __base);
unsigned long strtoul (const char *__n, char **__end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *__n, char **__end_PTR, int __base);

int system (const char *__string);
# 198 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdlib.h" 3
char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);



extern long double strtold (const char *, char **);
extern long double wcstold (const wchar_t *, wchar_t **);



# 77 "main.c" 2
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 1 3
# 34 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 35 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3


# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stdarg.h" 1 3 4
# 40 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3
# 46 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 1 3
# 69 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 149 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 70 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 2 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/types.h" 1 3
# 19 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 2 3
# 92 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned int ino_t;
# 162 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

typedef __uint32_t fsblkcnt_t;
typedef __uint32_t fsfilcnt_t;

# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/features.h" 1 3
# 265 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/types.h" 2 3
# 47 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/sys/stdio.h" 1 3
# 66 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 2 3
# 175 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 246 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 361 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/stdio.h" 3

# 78 "main.c" 2
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/malloc.h" 1 3
# 10 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/malloc.h" 3
# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/include/stddef.h" 1 3 4
# 11 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/malloc.h" 2 3


# 1 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/machine/malloc.h" 1 3
# 14 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/malloc.h" 2 3
# 22 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/malloc.h" 3
struct mallinfo {
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};



extern void * malloc (size_t);




extern void * _malloc_r (struct _reent *, size_t);


extern void free (void *);




extern void _free_r (struct _reent *, void *);


extern void * realloc (void *, size_t);




extern void * _realloc_r (struct _reent *, void *, size_t);


extern void * calloc (size_t, size_t);




extern void * _calloc_r (struct _reent *, size_t, size_t);


extern void * memalign (size_t, size_t);




extern void * _memalign_r (struct _reent *, size_t, size_t);


extern struct mallinfo mallinfo (void);




extern struct mallinfo _mallinfo_r (struct _reent *);


extern void malloc_stats (void);




extern void _malloc_stats_r (struct _reent *);


extern int mallopt (int, int);




extern int _mallopt_r (struct _reent *, int, int);


extern size_t malloc_usable_size (void *);




extern size_t _malloc_usable_size_r (struct _reent *, void *);





extern void * valloc (size_t);




extern void * _valloc_r (struct _reent *, size_t);


extern void * pvalloc (size_t);




extern void * _pvalloc_r (struct _reent *, size_t);


extern int malloc_trim (size_t);




extern int _malloc_trim_r (struct _reent *, size_t);




extern void mstats (char *);




extern void _mstats_r (struct _reent *, char *);
# 162 "c:\\devkitarm\\bin\\../lib/gcc/arm-eabi/4.5.0/../../../../arm-eabi/include/malloc.h" 3
extern void cfree (void *);
# 79 "main.c" 2

void initialize();

void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void gotoHowto();
void howto();
void startGame();
void firstStart();
void collisionCheck();
void updateObjects();
void drawSprites();
void fireBullet();
void spawnEnemy();
void spawnJade();

unsigned short buttons;
unsigned short oldButtons;

int hOff = 0;
int vOff = 0;

OBJ_ATTR shadowOAM[128];

ANISPRITE hero;
ANISPRITE bullets[10];
ANISPRITE obstacles[3];
ANISPRITE enemies[10];
ANISPRITE jades[5];

int *health;

int frame;
int aniState;
int jumpFrame;
int jumpSpeed;
int rAcc;
int cheat;
int aniCounter;
int frameCount;
int enemyLength;
int bulletLength;
int score;
int obsCanHurt;
int enemyCanHurt;
int healthBucket;
int hurtCounter;

int state;

enum {START, GAME, PAUSE, WIN, LOSE, HOWTO};

int main() {

 while(1) {

        setupSounds();
        setupInterrupts();
        firstStart();

        while(1) {


            oldButtons = buttons;
            buttons = (*(volatile unsigned short *)0x04000130);


            switch(state) {

                case START:
                    start();
                    break;
                case GAME:
                    game();
                    break;
                case PAUSE:
                    pause();
                    break;
                case WIN:
                    win();
                    break;
                case LOSE:
                    lose();
                    break;
                case HOWTO:
                 howto();
                 break;
            }

        }

        (*(volatile unsigned short *)0x04000010) = hOff;
        (*(volatile unsigned short *)0x04000012) = vOff;
 }

 return 0;
}

void drawSprites() {

 hideSprites();

 shadowOAM[0].attr0 = (0xFF & hero.screenRow) | (0<<14) | (1<<12);
 shadowOAM[0].attr1 = (0x1FF & hero.screenCol) | (3<<14);
    if (frame % 3 == 0) {
     if (aniState < 9) {
            aniState++;
        } else {
            aniState = 0;
        }
    }

    if (hero.rdel < 0) {
        shadowOAM[0].attr2 = ((16)*32+(16));
    } else if (hero.rdel > 0) {
        shadowOAM[0].attr2 = ((16)*32+(24));
    } else if (hero.worldRow < 92) {
        shadowOAM[0].attr2 = ((16)*32+(24));
    } else {
        if (aniState < 4) {
            shadowOAM[0].attr2 = ((0)*32+(aniState * 8));
        } else if (aniState < 8) {
            shadowOAM[0].attr2 = ((8)*32+((aniState - 4) * 8));
        } else if (aniState < 10) {
            shadowOAM[0].attr2 = ((16)*32+((aniState - 8) * 8));
        }
    }

    for (int k = 0; k < bulletLength; k++) {
        if (bullets[k].isActive) {
            shadowOAM[k + 1].attr0 = (0xFF & bullets[k].screenRow) | (0<<14);
            shadowOAM[k + 1].attr1 = (0x1FF & bullets[k].screenCol) | (1<<14);
            shadowOAM[k + 1].attr2 = ((24)*32+(8)) | ((0)<<10);
        }
    }

    for (int i = 0; i < 1; i++) {
        shadowOAM[i + 121].attr0 = (0xFF & obstacles[i].screenRow) | (2<<14);
        shadowOAM[i + 121].attr1 = (0x1FF & obstacles[i].screenCol) | (2<<14);
        shadowOAM[i + 121].attr2 = ((24)*32+(4));
    }

    if (cheat > 0) {
        shadowOAM[50].attr0 = (0xFF & (hero.screenRow - 6)) | (0<<14);
        shadowOAM[50].attr1 = (0x1FF & (hero.screenCol - 8)) | (3<<14);
        shadowOAM[50].attr2 = ((24)*32+(10));
    }

    for (int e = 0; e < enemyLength; e++) {
        if (enemies[e].isActive) {
            if (enemies[e].aniState == 0) {
                shadowOAM[e + 51].attr0 = (0xFF & enemies[e].screenRow) | (0<<14);
                shadowOAM[e + 51].attr1 = (0x1FF & enemies[e].screenCol) | (2<<14);
                shadowOAM[e + 51].attr2 = ((28)*32+(0));
            } else if (enemies[e].aniState == 1) {
                shadowOAM[e + 51].attr0 = (0xFF & enemies[e].screenRow) | (1<<14);
                shadowOAM[e + 51].attr1 = (0x1FF & enemies[e].screenCol) | (2<<14);
                shadowOAM[e + 51].attr2 = ((28)*32+(4));
            } else if (enemies[e].aniState == 2) {
                shadowOAM[e + 51].attr0 = (0xFF & enemies[e].screenRow) | (0<<14);
                shadowOAM[e + 51].attr1 = (0x1FF & enemies[e].screenCol) | (1<<14);
                shadowOAM[e + 51].attr2 = ((30)*32+(4));
            }
        }
    }

    for (int i = 0; i < healthBucket; i++) {
        if (health[i]) {
            shadowOAM[i + 71].attr0 = 146 | (0<<14);
            shadowOAM[i + 71].attr1 = (60 + (i * (8))) | (0<<14);
            shadowOAM[i + 71].attr2 = ((25)*32+(18));
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            shadowOAM[i + 91].attr0 = (0xFF & jades[i].screenRow) | (2<<14);
            shadowOAM[i + 91].attr1 = (0x1FF & jades[i].screenCol) | (0<<14);
            shadowOAM[i + 91].attr2 = ((25)*32+(6));
        }
    }

    shadowOAM[100].attr0 = 146 | (0<<14);;
    shadowOAM[100].attr1 = (200 + 0) | (0<<14);
    shadowOAM[100].attr2 = ((24)*32+(18 + ((score - (score % 10)) / 10)));

    shadowOAM[101].attr0 = 146 | (0<<14);;
    shadowOAM[101].attr1 = (208 + 0) | (0<<14);
    shadowOAM[101].attr2 = ((24)*32+(18 + (score % 10)));;

 DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void initialize() {

 (*(unsigned short *)0x4000000) = 0 | (1<<10) | (1<<9) | (1<<8) | (1<<12);

 loadPalette(bg2Pal);

 (*(volatile unsigned short*)0x400000C) = (0<<14) | ((0)<<2) | ((31)<<8);
    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((1)<<2) | ((29)<<8);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((2)<<2) | ((27)<<8);

 DMANow(3, bgTiles, &((charblock *)0x6000000)[0], 14400 / 2);
    DMANow(3, bgMap, &((screenblock *)0x6000000)[31], 2048 / 2);

    DMANow(3, bg2Tiles, &((charblock *)0x6000000)[1], 4544 / 2);
    DMANow(3, bg2Map, &((screenblock *)0x6000000)[29], 4096 / 2);

    DMANow(3, bg3Tiles, &((charblock *)0x6000000)[2], 1056 / 2);
    DMANow(3, bg3Map, &((screenblock *)0x6000000)[27], 2048 / 2);


    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512/2);
    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    hOff = 0;

    frame = 0;
    aniState = 0;
    jumpFrame = 0;
    jumpSpeed = 12;
    rAcc = 1;
    aniCounter = 1;

    bulletLength = 10;
    enemyLength = 10;

    hero.worldRow = 92;
    hero.worldCol = 10;

    hero.height = 38;
    hero.width = 37;

    cheat = -1;

    obsCanHurt = 1;
    enemyCanHurt = 1;

    healthBucket = 10;

    hero.screenRow = hero.worldRow - vOff;
    hero.screenCol = hero.worldCol - hOff;

    (*(volatile unsigned short *)0x0400001A) = vOff + 13;
    (*(volatile unsigned short *)0x04000016) = 0;
    (*(volatile unsigned short *)0x04000012) = 27;
    (*(volatile unsigned short *)0x04000010) = 8;

    for (int i = 0; i < 1; i++) {
        obstacles[i].isActive = 1;
        obstacles[i].height = 32;
        obstacles[i].width = 16;
        obstacles[i].worldRow = 96;
        obstacles[i].worldCol = 300;
        obstacles[i].screenRow = obstacles[i].worldRow - vOff;
        obstacles[i].screenCol = obstacles[i].worldCol - hOff;
    }

    for (int k = 0; k < bulletLength; k++) {
        bullets[k].isActive = 0;
        bullets[k].height = 8;
        bullets[k].width = 14;
    }

    for (int e = 0; e < enemyLength; e++) {
        enemies[e].isActive = 0;
        enemies[e].aniState = rand() % 3;
        if (enemies[e].aniState == 0) {
            enemies[e].height = 28;
            enemies[e].width = 30;
            enemies[e].worldRow = (rand() % 69) + 16;
        } else if (enemies[e].aniState == 1) {
            enemies[e].height = 12;
            enemies[e].width = 21;
            enemies[e].worldRow = (rand() % 84) + 16;
        } else if (enemies[e].aniState == 2) {
            enemies[e].height = 16;
            enemies[e].width = 16;
            enemies[e].worldRow = (rand() % 80) + 16;
        }
    }

    health = realloc(health, healthBucket * sizeof(int));

    for (int i = 0; i < 10; i++) {
        health[i] = 1;
    }

    for (int i = 0; i < 5; i++) {
        jades[i].isActive = 0;
        jades[i].worldRow = 116;
        jades[i].worldCol = 270;
        jades[i].height = 12;
        jades[i].width = 8;
        jades[i].aniState = rand() % 2;
    }

    (*(volatile unsigned short*)0x400004C) = ((0)+(0<<4)+(0<<8)+(0<<12));
    hurtCounter = 30;

    spawnEnemy();
    spawnJade();

    buttons = (*(volatile unsigned short *)0x04000130);
}


void start() {

    waitForVBlank();

    if (frameCount > 0) {
        frameCount++;
        if (frameCount > 120) {
            flipPage();
            frameCount = -1;
        }
    } else {
        frameCount--;
        if (frameCount < -120) {
            flipPage();
            frameCount = 1;
        }
    }


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stopSound();
        playSoundA(song01,1302062,11025, 1);
        startGame();
    } else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        drawFullscreenImage4(howtoScreenBitmap);
        drawString4(150, 2, "Press B to Return", WHITEID);
        flipPage();
        drawFullscreenImage4(howtoScreenBitmap);
     gotoHowto();
    }
}

void firstStart() {
    playSoundA(title,81240,11025, 1);
    goToStart();
}


void goToStart() {

    (*(unsigned short *)0x4000000) = 4 | (1<<10) | (1<<4);

    unsigned short colors[2] = {((0) | (0)<<5 | (0)<<10), ((31) | (31)<<5 | (31)<<10)};

    loadPalette(startScreenPal);

    for (int i = 0; i < 2; i++) {
        ((unsigned short *)0x5000000)[256-2 +i] = colors[i];
    }

    waitForVBlank();

    drawFullscreenImage4(startScreenBitmap);

    drawString4(120, 62, "Press Start to Begin", WHITEID);

    drawString4(150, 2, "Press Select for Instructions", WHITEID);

    flipPage();
    waitForVBlank();

    drawFullscreenImage4(startScreenBitmap);

    drawString4(150, 2, "Press Select for Instructions", WHITEID);

    flipPage();

    state = START;

    frameCount = 1;
    score = 0;
}


void goToWin() {

    drawFullscreenImage4(winScreenBitmap);
    flipPage();
    drawFullscreenImage4(winScreenBitmap);

    stopSound();
    playSoundA(victory, 755364, 11025, 1);

    state = WIN;
}


void win() {


    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        firstStart();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        firstStart();
    }
}


void game() {

 waitForVBlank();

 hero.rdel += rAcc;
 hero.worldCol += 1;

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        pauseSound();
        goToPause();
    }

    if (hero.worldRow == 92) {
     hero.rdel = 0;
        jumpFrame = 0;
        hero.worldCol -= 1;
        hero.height = 38;
        hero.width = 37;
    }

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0)))) && hero.worldRow == 92) {
     hero.rdel = -jumpSpeed;
        hero.height = 38;
        hero.width = 25;
    }

    hero.worldRow += hero.rdel;

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        playSoundB(laser, 1180, 11025, 0);
        fireBullet();
    }

    if (hurtCounter <= 0) {
        hurtCounter = 30;
        (*(volatile unsigned short*)0x400004C) = ((0)+(0<<4)+(0<<8)+(0<<12));
    } else if (hurtCounter < 30) {
        (*(volatile unsigned short*)0x400004C) = ((0)+(0<<4)+(hurtCounter<<8)+(hurtCounter<<12));
        hurtCounter--;
    }

    if (healthBucket == 0) {
        (*(unsigned short *)0x4000000) = 4 | (1<<10) | (1<<4);
        stopSound();
        loadPalette(loseScreenPal);
        drawFullscreenImage4(loseScreenBitmap);
        flipPage();
        drawFullscreenImage4(loseScreenBitmap);
        playSoundA(loseSong, 455016, 11025, 1);
        goToLose();
    }

    collisionCheck();


    hOff += 3;

    drawSprites();

    updateObjects();

    if (score >= 50) {
        (*(unsigned short *)0x4000000) = 4 | (1<<10) | (1<<4);
        loadPalette(winScreenPal);
        drawFullscreenImage4(winScreenBitmap);
        flipPage();
        drawFullscreenImage4(winScreenBitmap);
        goToWin();
    }

    hero.screenRow = hero.worldRow - vOff;
    hero.screenCol = hero.worldCol - hOff;


    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000018) = hOff / 2;

    frame++;
}

void updateObjects() {
    if ((hero.screenCol > 10) && (hero.worldRow == 92)) {
        hero.worldCol += 2;
    } else {
        hero.worldCol += 3;
    }

    for (int i = 0; i < 3; i++) {
        obstacles[i].screenRow = obstacles[i].worldRow - vOff;
        obstacles[i].screenCol = obstacles[i].worldCol - hOff;
    }

    for (int j = 0; j < 1; j++) {
        if (obstacles[j].screenCol <= -16) {
            for (int j = 0; j < 1; j++) {
                obstacles[j].worldCol = (rand() % 272) + 240 + hOff;
                obstacles[j].screenCol = obstacles[j].worldCol - hOff;
                obsCanHurt = 1;
            }
        }
    }

    for (int k = 0; k < bulletLength; k++) {
        if (bullets[k].isActive) {
            if (bullets[k].worldCol > hOff + 240) {
                bullets[k].isActive = 0;
            } else if (bullets[k].worldRow < -8) {
                bullets[k].isActive = 0;
            } else {
                bullets[k].worldCol += bullets[k].cdel;
                bullets[k].worldRow += bullets[k].rdel;
                bullets[k].screenRow = bullets[k].worldRow - vOff;
                bullets[k].screenCol = bullets[k].worldCol - hOff;
            }
        }
    }

    for (int e = 0; e < enemyLength; e++) {
        if (enemies[e].isActive) {
            if (enemies[e].screenCol < -30) {
                enemies[e].isActive = 0;
                spawnEnemy();
            } else {
                enemies[e].worldCol += enemies[e].cdel;
                enemies[e].screenRow = enemies[e].worldRow - vOff;
                enemies[e].screenCol = enemies[e].worldCol - hOff;
            }
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            if (jades[i].screenCol < -8) {
                jades[i].isActive = 0;
            } else {
                jades[i].screenRow = jades[i].worldRow - vOff;
                jades[i].screenCol = jades[i].worldCol - hOff;
            }
        }
    }
}

void collisionCheck() {
    if (collision(hero.worldRow, hero.worldCol, hero.height, hero.width, obstacles[0].worldRow, obstacles[0].worldCol, 32, 16)) {
        if (cheat < 0) {
            if (obsCanHurt) {
                playSoundB(hurt, 3734, 11025, 0);
                obsCanHurt = 0;
                (*(volatile unsigned short*)0x400004C) = ((0)+(0<<4)+(hurtCounter<<8)+(hurtCounter<<12));
                hurtCounter--;
                healthBucket--;
                health = realloc(health, healthBucket * sizeof(int));
                for (int i = 0; i < healthBucket; i++) {
                    health[i] = 1;
                }
            }
        }
    }

    for (int i = 0; i < enemyLength; i++) {
        if (enemies[i].isActive) {
            if (collision(enemies[i].worldRow, enemies[i].worldCol, enemies[i].height, enemies[i].width, hero.worldRow, hero.worldCol, hero.height, hero.width)) {
                if (cheat < 0) {
                    if (enemyCanHurt) {
                        enemyCanHurt = 0;
                        (*(volatile unsigned short*)0x400004C) = ((0)+(0<<4)+(hurtCounter<<8)+(hurtCounter<<12));
                        hurtCounter--;
                        healthBucket--;
                        health = realloc(health, healthBucket * sizeof(int));
                        for (int i = 0; i < healthBucket; i++) {
                            health[i] = 1;
                        }
                        playSoundB(hurt, 3734, 11025, 0);
                    }
                }
            }
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            if (collision(jades[i].worldRow, jades[i].worldCol, jades[i].height, jades[i].width, hero.worldRow, hero.worldCol, hero.height, hero.width)) {
                playSoundB(coin, 10969, 11025, 0);
                jades[i].isActive = 0;
                score++;
                if (healthBucket < 10) {
                    healthBucket++;
                    health = realloc(health, healthBucket * sizeof(int));
                    for (int i = 0; i < healthBucket; i++) {
                        health[i] = 1;
                    }
                }
            }
        }
    }

    for (int i = 0; i < 5; i++) {
        if (jades[i].isActive) {
            if (collision(obstacles[0].worldRow, obstacles[0].worldCol, 32, 16, jades[i].worldRow, jades[i].worldCol, jades[i].height, jades[i].width)) {
                jades[i].worldCol++;
            }
        }
    }

    for (int i = 0; i < enemyLength; i++) {
        for (int j = 0; j < bulletLength; j++) {
            if (bullets[j].isActive) {
                if (enemies[i].isActive) {
                    if (collision(bullets[j].worldRow, bullets[j].worldCol, bullets[j].height, bullets[j].width, enemies[i].worldRow, enemies[i].worldCol, enemies[i].height, enemies[i].width)) {
                        enemies[i].isActive = 0;
                        bullets[j].isActive = 0;
                        score++;
                        spawnEnemy();
                        spawnJade();
                    }
                }
            }
        }
    }
}

void fireBullet() {
    for (int k = 0; k < bulletLength; k++) {
        if (!(bullets[k].isActive)) {
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
                bullets[k].rdel = -9;
            } else {
                bullets[k].rdel = 0;
            }
            bullets[k].isActive = 1;
            bullets[k].cdel = 12;
            if (hero.worldRow == 92) {
                bullets[k].worldRow = hero.worldRow + 5;
                bullets[k].worldCol = hero.worldCol + 37;
            } else {
                bullets[k].worldRow = hero.worldRow + 7;
                bullets[k].worldCol = hero.worldCol + 35;
            }
            bullets[k].screenRow = bullets[k].worldRow - vOff;
            bullets[k].screenCol = bullets[k].worldCol - hOff;
            break;
        }
    }
}

void spawnEnemy() {
    for (int e = 0; e < enemyLength; e++) {
        if (!(enemies[e].isActive)) {

                enemies[e].isActive = 1;
                enemies[e].cdel = -2;
                enemies[e].aniState = rand() % 3;
                if (enemies[e].aniState == 0) {
                    enemies[e].height = 28;
                    enemies[e].width = 30;
                    enemies[e].worldRow = (rand() % 69) + 16;
                } else if (enemies[e].aniState == 1) {
                    enemies[e].height = 12;
                    enemies[e].width = 21;
                    enemies[e].worldRow = (rand() % 84) + 16;
                } else if (enemies[e].aniState == 2) {
                    enemies[e].height = 16;
                    enemies[e].width = 16;
                    enemies[e].worldRow = (rand() % 80) + 16;
                }
                enemies[e].worldRow = (rand() % 69) + 16;
                enemies[e].worldCol = (rand() % 272) + 230 + hOff;
                enemies[e].screenRow = enemies[e].worldRow - vOff;
                enemies[e].screenCol = enemies[e].worldCol - hOff;
                enemyCanHurt = 1;
                break;

        }
    }
}

void spawnJade() {
    for (int i = 0; i < 5; i++) {
        if (!(jades[i].isActive)) {
            jades[i].isActive = 1;
            jades[i].worldCol = (rand() % 272) + 210 + hOff;
            jades[i].screenRow = jades[i].worldRow - vOff;
            jades[i].screenCol = jades[i].worldCol - hOff;
            break;
        }
    }
}


void goToGame() {

    (*(volatile unsigned short*)0x400000C) = (0<<14) | ((0)<<2) | ((31)<<8);
    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((1)<<2) | ((29)<<8);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((2)<<2) | ((27)<<8);

    DMANow(3, bg3Tiles, &((charblock *)0x6000000)[2], 1056 / 2);
    DMANow(3, bg3Map, &((screenblock *)0x6000000)[27], 2048 / 2);

    state = GAME;
}

void startGame() {

 state = GAME;

    initialize();
}


void goToLose() {

    drawFullscreenImage4(loseScreenBitmap);
    flipPage();
    drawFullscreenImage4(loseScreenBitmap);
    state = LOSE;
}


void lose() {


    waitForVBlank();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        firstStart();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        firstStart();
    }
}


void pause() {


    waitForVBlank();

    hideSprites();

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        cheat *= -1;
        playSoundB(coin, 10969, 11025, 0);
    }


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        unpauseSound();
        drawSprites();
        goToGame();
    }
    else if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        stopSound();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        firstStart();
    }
}


void goToPause() {

    (*(volatile unsigned short*)0x400000C) = (0<<14) | ((0)<<2) | ((31)<<8);
    (*(volatile unsigned short*)0x400000A) = (1<<14) | ((1)<<2) | ((29)<<8);
    (*(volatile unsigned short*)0x4000008) = (0<<14) | ((2)<<2) | ((27)<<8);

    DMANow(3, bg3_2Tiles, &((charblock *)0x6000000)[2], 2848 / 2);
    DMANow(3, bg3_2Map, &((screenblock *)0x6000000)[27], 2048 / 2);

 state = PAUSE;
}

void gotoHowto() {

    unsigned short colors[2] = {((0) | (0)<<5 | (0)<<10), ((31) | (31)<<5 | (31)<<10)};

    loadPalette(howtoScreenPal);

    for (int i = 0; i < 2; i++) {
        ((unsigned short *)0x5000000)[256-2 +i] = colors[i];
    }

    waitForVBlank();

    drawFullscreenImage4(howtoScreenBitmap);
    drawString4(150, 2, "Press B to Return", WHITEID);

    flipPage();
    waitForVBlank();

    drawFullscreenImage4(howtoScreenBitmap);
    flipPage();
    frameCount = 1;

 state = HOWTO;
}

void howto() {

    waitForVBlank();

    if (frameCount > 0) {
        frameCount++;
        if (frameCount > 120) {
            flipPage();
            frameCount = -1;
        }
    } else {
        frameCount--;
        if (frameCount < -120) {
            flipPage();
            frameCount = 1;
        }
    }

 if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        drawFullscreenImage4(startScreenBitmap);
        drawString4(120, 62, "Press Start to Begin", WHITEID);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
        flipPage();
        drawFullscreenImage4(startScreenBitmap);
        drawString4(150, 2, "Press Select for Instructions", WHITEID);
  goToStart();
 }
}
