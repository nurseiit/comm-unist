
.PHONY: random-test random-asan lab1 lab1-debug



lab1: DoublyLinkedList.cc  DoublyLinkedList.h  List.h  main.cc
	g++ -std=c++11 -O2 main.cc DoublyLinkedList.cc -o lab1

lab1-debug: DoublyLinkedList.cc  DoublyLinkedList.h  List.h  main.cc
	g++ -std=c++11 -O2 main.cc DoublyLinkedList.cc -o lab1-debug \
		-fsanitize=address

test-debug:
	./lab1-debug

clean:
	rm -f lab1 lab1-debug random-test random-asan .test.cpp
test:
	./lab1



random-test:
	rm -f .test.cpp random-test && ./gen-testcase.py && \
		g++ -O2 .test.cpp DoublyLinkedList.cc -o random-test && \
		./random-test

random-asan:
	rm -f .test.cpp random-asan && ./gen-testcase.py && \
		g++ -O2 .test.cpp DoublyLinkedList.cc -fsanitize=address -o random-asan && \
		./random-asan



