package main

import (
	"fmt"
	"net/http"
)

func hello(w http.ResponseWriter, req *http.Request) {

	fmt.Fprintf(w, "hello in app\n")
}

func headers(w http.ResponseWriter, req *http.Request) {

	for name, headers := range req.Header {
		for _, h := range headers {
			fmt.Fprintf(w, "%v: %v\n", name, h)
		}
	}
}

func main() {

	http.HandleFunc("/api/", hello)
	http.HandleFunc("/api/headers", headers)

	http.ListenAndServe(":8090", nil)
}
