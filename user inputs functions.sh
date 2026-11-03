#!/bin/bash

greet-user() {
    echo "What is your name?"
    read name
    echo "Hello, $name!"
}
greet-user