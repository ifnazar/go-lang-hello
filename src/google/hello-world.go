package main

import (
	"fmt"
	"time"
)

func main() {
	fmt.Println("Starting Job")
	fmt.Println("hello world")

	time.Sleep(30 * time.Second)

	fmt.Println("Stopping Job")
}
