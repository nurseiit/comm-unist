
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (98,1886)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(126);
    ref.push(126);

//len_list: 1
//==============================


//==============================
    submit.push(495);
    ref.push(495);

//len_list: 2
//==============================


//==============================
    submit.push(7815);
    ref.push(7815);

//len_list: 3
//==============================


//==============================
    submit.push(5577);
    ref.push(5577);

//len_list: 4
//==============================


//==============================
    submit.push(7294);
    ref.push(7294);

//len_list: 5
//==============================


//==============================
    submit.push(2853);
    ref.push(2853);

//len_list: 6
//==============================


//==============================
    submit.push(483);
    ref.push(483);

//len_list: 7
//==============================


//==============================
    submit.push(4519);
    ref.push(4519);

//len_list: 8
//==============================


//==============================
    submit.push(2034);
    ref.push(2034);

//len_list: 9
//==============================


//==============================
    submit.push(4354);
    ref.push(4354);

//len_list: 10
//==============================


//==============================
    submit.push(4791);
    ref.push(4791);

//len_list: 11
//==============================


//==============================
    submit.push(9912);
    ref.push(9912);

//len_list: 12
//==============================


//==============================
    submit.push(7453);
    ref.push(7453);

//len_list: 13
//==============================


//==============================
    submit.push(3883);
    ref.push(3883);

//len_list: 14
//==============================


//==============================
    submit.push(2842);
    ref.push(2842);

//len_list: 15
//==============================


//==============================
    submit.push(1475);
    ref.push(1475);

//len_list: 16
//==============================


//==============================
    submit.push(8649);
    ref.push(8649);

//len_list: 17
//==============================


//==============================
    submit.push(645);
    ref.push(645);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(81);
    ref.push(81);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(1221);
    ref.push(1221);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(4087);
    ref.push(4087);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(2525);
    ref.push(2525);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(6072);
    ref.push(6072);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(7627);
    ref.push(7627);

//len_list: 19
//==============================


//==============================
    submit.push(2986);
    ref.push(2986);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(9883);
    ref.push(9883);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9691);
    ref.push(9691);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(2320);
    ref.push(2320);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(8812);
    ref.push(8812);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(7820);
    ref.push(7820);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(8399);
    ref.push(8399);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(2340);
    ref.push(2340);

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3330);
    ref.push(3330);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(5699);
    ref.push(5699);

//len_list: 21
//==============================


//==============================
    submit.push(6594);
    ref.push(6594);

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(5654);
    ref.push(5654);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(3877);
    ref.push(3877);

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(6818);
    ref.push(6818);

//len_list: 20
//==============================


//==============================
    submit.push(9227);
    ref.push(9227);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(4993);
    ref.push(4993);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(5141);
    ref.push(5141);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(9388);
    ref.push(9388);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(5938);
    ref.push(5938);

//len_list: 22
//==============================


//==============================
    submit.push(1442);
    ref.push(1442);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(6591);
    ref.push(6591);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(4402);
    ref.push(4402);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(2777);
    ref.push(2777);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(1309);
    ref.push(1309);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(2933);
    ref.push(2933);

//len_list: 22
//==============================


//==============================
    submit.push(5746);
    ref.push(5746);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(4882);
    ref.push(4882);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(8936);
    ref.push(8936);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(9599);
    ref.push(9599);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(3493);
    ref.push(3493);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(7040);
    ref.push(7040);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(9772);
    ref.push(9772);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(8281);
    ref.push(8281);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(7977);
    ref.push(7977);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(4373);
    ref.push(4373);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(7076);
    ref.push(7076);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(6845);
    ref.push(6845);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(901);
    ref.push(901);

//len_list: 26
//==============================


//==============================
    submit.push(3012);
    ref.push(3012);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(5155);
    ref.push(5155);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(3639);
    ref.push(3639);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(6587);
    ref.push(6587);

//len_list: 26
//==============================


//==============================
    submit.push(5041);
    ref.push(5041);

//len_list: 27
//==============================


//==============================
    submit.push(6918);
    ref.push(6918);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(8818);
    ref.push(8818);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(9476);
    ref.push(9476);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(1617);
    ref.push(1617);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(9919);
    ref.push(9919);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(9369);
    ref.push(9369);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(6215);
    ref.push(6215);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(9626);
    ref.push(9626);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(9741);
    ref.push(9741);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(4774);
    ref.push(4774);

//len_list: 31
//==============================


//==============================
    submit.push(5762);
    ref.push(5762);

//len_list: 32
//==============================


//==============================
    submit.push(4825);
    ref.push(4825);

//len_list: 33
//==============================


//==============================
    submit.push(5382);
    ref.push(5382);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4097);
    ref.push(4097);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(4674);
    ref.push(4674);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(2719);
    ref.push(2719);

//len_list: 34
//==============================


//==============================
    submit.push(2304);
    ref.push(2304);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(7324);
    ref.push(7324);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(7549);
    ref.push(7549);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(4934);
    ref.push(4934);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(5140);
    ref.push(5140);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(3386);
    ref.push(3386);

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(4353);
    ref.push(4353);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(8136);
    ref.push(8136);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(6099);
    ref.push(6099);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(9517);
    ref.push(9517);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(3894);
    ref.push(3894);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(4422);
    ref.push(4422);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2493);
    ref.push(2493);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(4171);
    ref.push(4171);

//len_list: 40
//==============================


//==============================
    submit.push(9671);
    ref.push(9671);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(8016);
    ref.push(8016);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(7830);
    ref.push(7830);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(1407);
    ref.push(1407);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2007);
    ref.push(2007);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(8080);
    ref.push(8080);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2386);
    ref.push(2386);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(6888);
    ref.push(6888);

//len_list: 41
//==============================


//==============================
    submit.push(831);
    ref.push(831);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(1031);
    ref.push(1031);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(5863);
    ref.push(5863);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(4192);
    ref.push(4192);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(919);
    ref.push(919);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(7220);
    ref.push(7220);

//len_list: 38
//==============================


//==============================
    submit.push(1132);
    ref.push(1132);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.push(5618);
    ref.push(5618);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(4639);
    ref.push(4639);

//len_list: 38
//==============================


//==============================
    submit.push(3915);
    ref.push(3915);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(5548);
    ref.push(5548);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(8245);
    ref.push(8245);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(6172);
    ref.push(6172);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(2457);
    ref.push(2457);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.push(3661);
    ref.push(3661);

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(1493);
    ref.push(1493);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7309);
    ref.push(7309);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(28);
    ref.push(28);

//len_list: 33
//==============================


//==============================
    submit.push(104);
    ref.push(104);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(4312);
    ref.push(4312);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(1458);
    ref.push(1458);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(1665);
    ref.push(1665);

//len_list: 34
//==============================


//==============================
    submit.push(6491);
    ref.push(6491);

//len_list: 35
//==============================


//==============================
    submit.push(6259);
    ref.push(6259);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4058);
    ref.push(4058);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(3913);
    ref.push(3913);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(1248);
    ref.push(1248);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(8425);
    ref.push(8425);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(6135);
    ref.push(6135);

//len_list: 33
//==============================


//==============================
    submit.push(7707);
    ref.push(7707);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(688);
    ref.push(688);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(8308);
    ref.push(8308);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(8526);
    ref.push(8526);

//len_list: 34
//==============================


//==============================
    submit.push(824);
    ref.push(824);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(9622);
    ref.push(9622);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(595);
    ref.push(595);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(9932);
    ref.push(9932);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(1737);
    ref.push(1737);

//len_list: 34
//==============================


//==============================
    submit.push(2044);
    ref.push(2044);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(9349);
    ref.push(9349);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(6098);
    ref.push(6098);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(2540);
    ref.push(2540);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5934);
    ref.push(5934);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(1048);
    ref.push(1048);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7372);
    ref.push(7372);

//len_list: 32
//==============================


//==============================
    submit.push(6584);
    ref.push(6584);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(577);
    ref.push(577);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4253);
    ref.push(4253);

//len_list: 35
//==============================


//==============================
    submit.push(6403);
    ref.push(6403);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(7512);
    ref.push(7512);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(7781);
    ref.push(7781);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(5942);
    ref.push(5942);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(198);
    ref.push(198);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(9512);
    ref.push(9512);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(4358);
    ref.push(4358);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(3510);
    ref.push(3510);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(1177);
    ref.push(1177);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(5264);
    ref.push(5264);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(7449);
    ref.push(7449);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(5116);
    ref.push(5116);

//len_list: 33
//==============================


//==============================
    submit.push(1668);
    ref.push(1668);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(9031);
    ref.push(9031);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(8932);
    ref.push(8932);

//len_list: 36
//==============================


//==============================
    submit.push(793);
    ref.push(793);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(7456);
    ref.push(7456);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(5830);
    ref.push(5830);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(8697);
    ref.push(8697);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.push(6358);
    ref.push(6358);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(3954);
    ref.push(3954);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(7672);
    ref.push(7672);

//len_list: 36
//==============================


//==============================
    submit.push(6626);
    ref.push(6626);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(8227);
    ref.push(8227);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(1621);
    ref.push(1621);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(3975);
    ref.push(3975);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(2839);
    ref.push(2839);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(2810);
    ref.push(2810);

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(4718);
    ref.push(4718);

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(6676);
    ref.push(6676);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(500);
    ref.push(500);

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(1967);
    ref.push(1967);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(1954);
    ref.push(1954);

//len_list: 35
//==============================


//==============================
    submit.push(2528);
    ref.push(2528);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(7558);
    ref.push(7558);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(4709);
    ref.push(4709);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(5413);
    ref.push(5413);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(396);
    ref.push(396);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(2276);
    ref.push(2276);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(5061);
    ref.push(5061);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(8094);
    ref.push(8094);

//len_list: 39
//==============================


//==============================
    submit.push(5653);
    ref.push(5653);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(9936);
    ref.push(9936);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(2356);
    ref.push(2356);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(2898);
    ref.push(2898);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(1702);
    ref.push(1702);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(1720);
    ref.push(1720);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(8762);
    ref.push(8762);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2787);
    ref.push(2787);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(3693);
    ref.push(3693);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(2714);
    ref.push(2714);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(2186);
    ref.push(2186);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(3207);
    ref.push(3207);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(5943);
    ref.push(5943);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(888);
    ref.push(888);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(9161);
    ref.push(9161);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(3573);
    ref.push(3573);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(9534);
    ref.push(9534);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(7658);
    ref.push(7658);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(7218);
    ref.push(7218);

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(9316);
    ref.push(9316);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(8789);
    ref.push(8789);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(1841);
    ref.push(1841);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(3058);
    ref.push(3058);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(859);
    ref.push(859);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5516);
    ref.push(5516);

//len_list: 33
//==============================


//==============================
    submit.push(6113);
    ref.push(6113);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(1474);
    ref.push(1474);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(5626);
    ref.push(5626);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(3585);
    ref.push(3585);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(2137);
    ref.push(2137);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(9469);
    ref.push(9469);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(5841);
    ref.push(5841);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(3430);
    ref.push(3430);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5780);
    ref.push(5780);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(2249);
    ref.push(2249);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5508);
    ref.push(5508);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(4035);
    ref.push(4035);

//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(2230);
    ref.push(2230);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(677);
    ref.push(677);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(2131);
    ref.push(2131);

//len_list: 31
//==============================


//==============================
    submit.push(3151);
    ref.push(3151);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5247);
    ref.push(5247);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(7360);
    ref.push(7360);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(100);
    ref.push(100);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(5981);
    ref.push(5981);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(6376);
    ref.push(6376);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(2123);
    ref.push(2123);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(9098);
    ref.push(9098);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(1215);
    ref.push(1215);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(1263);
    ref.push(1263);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(5169);
    ref.push(5169);

//len_list: 26
//==============================


//==============================
    submit.push(8826);
    ref.push(8826);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(9465);
    ref.push(9465);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(801);
    ref.push(801);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(5889);
    ref.push(5889);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(4316);
    ref.push(4316);

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(2881);
    ref.push(2881);

//len_list: 31
//==============================


//==============================
    submit.push(5478);
    ref.push(5478);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5348);
    ref.push(5348);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(2537);
    ref.push(2537);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(1387);
    ref.push(1387);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(5196);
    ref.push(5196);

//len_list: 34
//==============================


//==============================
    submit.push(4212);
    ref.push(4212);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(8416);
    ref.push(8416);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(1894);
    ref.push(1894);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7288);
    ref.push(7288);

//len_list: 32
//==============================


//==============================
    submit.push(6222);
    ref.push(6222);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(1703);
    ref.push(1703);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(4002);
    ref.push(4002);

//len_list: 31
//==============================


//==============================
    submit.push(554);
    ref.push(554);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(268);
    ref.push(268);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(2368);
    ref.push(2368);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(8323);
    ref.push(8323);

//len_list: 34
//==============================


//==============================
    submit.push(5664);
    ref.push(5664);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(8239);
    ref.push(8239);

//len_list: 36
//==============================


//==============================
    submit.push(9540);
    ref.push(9540);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(2607);
    ref.push(2607);

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(5316);
    ref.push(5316);

//len_list: 38
//==============================


//==============================
    submit.push(3154);
    ref.push(3154);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(8623);
    ref.push(8623);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(5012);
    ref.push(5012);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(7990);
    ref.push(7990);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(2225);
    ref.push(2225);

//len_list: 37
//==============================


//==============================
    submit.push(249);
    ref.push(249);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(2749);
    ref.push(2749);

//len_list: 38
//==============================


//==============================
    submit.push(2480);
    ref.push(2480);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(7135);
    ref.push(7135);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(8912);
    ref.push(8912);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(6816);
    ref.push(6816);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(3193);
    ref.push(3193);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(4425);
    ref.push(4425);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(3029);
    ref.push(3029);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(3224);
    ref.push(3224);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(5397);
    ref.push(5397);

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(7973);
    ref.push(7973);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(1154);
    ref.push(1154);

//len_list: 38
//==============================


//==============================
    submit.push(6138);
    ref.push(6138);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3365);
    ref.push(3365);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2744);
    ref.push(2744);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(5151);
    ref.push(5151);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(3476);
    ref.push(3476);

//len_list: 41
//==============================


//==============================
    submit.push(683);
    ref.push(683);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(7291);
    ref.push(7291);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(4775);
    ref.push(4775);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(8518);
    ref.push(8518);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(2814);
    ref.push(2814);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(6206);
    ref.push(6206);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(2798);
    ref.push(2798);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(8228);
    ref.push(8228);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(5156);
    ref.push(5156);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(181);
    ref.push(181);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(4581);
    ref.push(4581);

//len_list: 36
//==============================


//==============================
    submit.push(4112);
    ref.push(4112);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(42);
    ref.push(42);

//len_list: 38
//==============================


//==============================
    submit.push(6113);
    ref.push(6113);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(1214);
    ref.push(1214);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(265);
    ref.push(265);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(4938);
    ref.push(4938);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(2313);
    ref.push(2313);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(2636);
    ref.push(2636);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1837);
    ref.push(1837);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(4245);
    ref.push(4245);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(9110);
    ref.push(9110);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(1878);
    ref.push(1878);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(5599);
    ref.push(5599);

//len_list: 40
//==============================


//==============================
    submit.push(7575);
    ref.push(7575);

//len_list: 41
//==============================


//==============================
    submit.push(4465);
    ref.push(4465);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(6866);
    ref.push(6866);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(2212);
    ref.push(2212);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(930);
    ref.push(930);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(8188);
    ref.push(8188);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(3665);
    ref.push(3665);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1890);
    ref.push(1890);

//len_list: 43
//==============================


//==============================
    submit.push(7998);
    ref.push(7998);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1677);
    ref.push(1677);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(7598);
    ref.push(7598);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(2621);
    ref.push(2621);

//len_list: 45
//==============================


//==============================
    submit.push(4705);
    ref.push(4705);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(499);
    ref.push(499);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(715);
    ref.push(715);

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(1141);
    ref.push(1141);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(9702);
    ref.push(9702);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(6453);
    ref.push(6453);

//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(5475);
    ref.push(5475);

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(2918);
    ref.push(2918);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(5642);
    ref.push(5642);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(5017);
    ref.push(5017);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(3075);
    ref.push(3075);

//len_list: 46
//==============================


//==============================
    submit.push(8091);
    ref.push(8091);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(9324);
    ref.push(9324);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(3161);
    ref.push(3161);

//len_list: 47
//==============================


//==============================
    submit.push(3027);
    ref.push(3027);

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.push(1821);
    ref.push(1821);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(5239);
    ref.push(5239);

//len_list: 48
//==============================


//==============================
    submit.push(5024);
    ref.push(5024);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(7923);
    ref.push(7923);

//len_list: 50
//==============================


//==============================
    submit.push(7626);
    ref.push(7626);

//len_list: 51
//==============================


//==============================
    submit.push(7190);
    ref.push(7190);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(2779);
    ref.push(2779);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(2440);
    ref.push(2440);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(5083);
    ref.push(5083);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.push(8178);
    ref.push(8178);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(4323);
    ref.push(4323);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(6193);
    ref.push(6193);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(4170);
    ref.push(4170);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.push(6951);
    ref.push(6951);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(2099);
    ref.push(2099);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(4062);
    ref.push(4062);

//len_list: 51
//==============================


//==============================
    submit.push(6939);
    ref.push(6939);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(8612);
    ref.push(8612);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1013
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1014
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1015
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1016
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1017
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1018
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1019
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.push(4708);
    ref.push(4708);

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.push(3308);
    ref.push(3308);

//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1020
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(5474);
    ref.push(5474);

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1021
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(6299);
    ref.push(6299);

//len_list: 49
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1022
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1023
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1024
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1025
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1026
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(4546);
    ref.push(4546);

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1027
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1028
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1029
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1030
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1031
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1032
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(5914);
    ref.push(5914);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1033
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1034
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1035
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1036
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(4887);
    ref.push(4887);

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(2333);
    ref.push(2333);

//len_list: 40
//==============================


//==============================
    submit.push(3097);
    ref.push(3097);

//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1037
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1038
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(8837);
    ref.push(8837);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1039
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1040
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(2702);
    ref.push(2702);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1041
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(8693);
    ref.push(8693);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1042
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1043
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(2978);
    ref.push(2978);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1044
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1045
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1046
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1047
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(5274);
    ref.push(5274);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1048
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1049
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1050
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1405);
    ref.push(1405);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1051
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1052
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(9870);
    ref.push(9870);

//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(9805);
    ref.push(9805);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1053
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(4259);
    ref.push(4259);

//len_list: 44
//==============================


//==============================
    submit.push(579);
    ref.push(579);

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1054
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1055
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(7369);
    ref.push(7369);

//len_list: 45
//==============================


//==============================
    submit.push(4873);
    ref.push(4873);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1056
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1057
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1058
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1059
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(4866);
    ref.push(4866);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1060
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1061
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1062
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1063
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1064
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1065
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1066
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1067
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1068
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1069
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(7824);
    ref.push(7824);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1070
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1071
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1072
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(1186);
    ref.push(1186);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1073
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1074
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1075
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1076
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1077
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1078
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1079
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1080
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1081
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1082
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1083
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1084
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1085
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1086
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(9239);
    ref.push(9239);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1087
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1088
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1089
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1090
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1091
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(7552);
    ref.push(7552);

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1092
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(7449);
    ref.push(7449);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1093
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1094
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1095
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(6563);
    ref.push(6563);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1096
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1097
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(7751);
    ref.push(7751);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1098
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1099
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1100
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(7418);
    ref.push(7418);

//len_list: 43
//==============================


//==============================
    submit.push(9075);
    ref.push(9075);

//len_list: 44
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1101
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1102
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1103
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1104
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(8468);
    ref.push(8468);

//len_list: 43
//==============================


//==============================
    submit.push(9932);
    ref.push(9932);

//len_list: 44
//==============================


//==============================
    submit.push(5875);
    ref.push(5875);

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1105
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1106
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1107
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1108
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(8634);
    ref.push(8634);

//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1109
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1110
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(9904);
    ref.push(9904);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1111
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(2321);
    ref.push(2321);

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(3200);
    ref.push(3200);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1112
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1113
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(4338);
    ref.push(4338);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(9226);
    ref.push(9226);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1114
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1115
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1116
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(6101);
    ref.push(6101);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1117
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(4685);
    ref.push(4685);

//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1118
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1119
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


}
