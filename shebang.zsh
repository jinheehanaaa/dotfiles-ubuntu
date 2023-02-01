#!/usr/bin/env zsh

echo "\n<<< Running $0 >>>\n"
echo "The current Shell is: $(ps $$ -ocomm=)"

exists brew && echo "Hey!" || echo "bogus"
exists nonexistent && echo "Hey!" || echo "bogus"