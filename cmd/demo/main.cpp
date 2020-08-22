#include <ctime>
#include <iostream>

int main(int argc, char *argv[])
{
  time_t begin_time = time(0);
  time_t cur_time = time(0);
  std::cout << "begin time = " << ctime(&begin_time) << std::endl;
  while ((cur_time - begin_time) < 10)
  {
    cur_time = time(0);
  }
  std::cout << "end time = " << ctime(&cur_time) << std::endl;
  return 0;
}