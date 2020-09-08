package main

import "testing"

func TestGaussSum(t *testing.T){
	s := sum(100)

	if s != 5050 {
		t.Fatalf("invalid result %d\n", s)
	}
	
}
