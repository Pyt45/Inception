package main

import (
	"os"
	"strings"
	"time"

	"github.com/LIYINGZHEN/copyfolder"
)

func NewJobUntil() {
	time.Sleep(3 * time.Minute)
}

func GenerateNewDir() string {
	currentTime := time.Now()
	dirName := strings.Join(strings.Split(currentTime.String(), " "), "_")
	return dirName
}

func main() {

	for {
		dir := GenerateNewDir()
		os.Mkdir(dir, 0777)
		src := "/dbdata"
		dest := "/backup/" + dir
		copyfolder.Copy(src, dest)
		NewJobUntil()
	}
}
