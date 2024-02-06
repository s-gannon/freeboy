#ifndef FREEBOY_SCREEN_H
#define FREEBOY_SCREEN_H
typedef struct fb_screen_t{
	char* screen_name;
	char* screen_title;
	char* screen_desc;
} fb_screen_t;

fb_screen_t fb_screen_alloc();

#endif

#ifdef FREEBOY_SCREEN_IMPLEMENTATION
fb_screen_t fb_screen_alloc(){
	fb_screen_t scr;

	

	return scr;
}
#endif
