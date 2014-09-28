#include <poll.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>

int main(int argc, char const *argv[])
{
	struct pollfd fds[2];
	int msecs = 40000;

	fds[0].fd = open("/dev/dev0", O_RDONLY);
	fds[1].fd = open("/dev/dev1", O_RDONLY );

	poll(fds, 2, msecs);
	return 0;
}