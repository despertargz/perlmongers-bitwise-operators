# WARNING! NOT PERL

// Set GPIO pin 4 to output
INP_GPIO(4); // must use INP_GPIO before we can use OUT_GPIO
OUT_GPIO(4);

while(1) {
  GPIO_SET = 1 << 4;
  GPIO_CLR = 1 << 4;
}

# reference:
# http://codeandlife.com/2012/07/03/benchmarking-raspberry-pi-gpio-speed/
