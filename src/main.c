#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <curses.h>
#include <locale.h>

void ncurses_setup(void){
	setlocale(LC_ALL, "");
	
	initscr();
	cbreak();
	noecho();

	intrflush(stdscr, FALSE);
	keypad(stdscr, TRUE);
}

void print_stats(void){
	for(int i = 0; i < COLS; i++)
		mvprintw(0, i, "-");
	mvprintw(0, 4, "STATS");
}

int main(void){
	ncurses_setup();
	print_stats();

	refresh();
	getch();

	endwin();
	return EXIT_SUCCESS;
}
