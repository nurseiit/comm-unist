
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (60,726)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(971);
    ref.push(971);

//len_list: 1
//==============================


//==============================
    submit.push(7995);
    ref.push(7995);

//len_list: 2
//==============================


//==============================
    submit.push(950);
    ref.push(950);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8779);
    ref.push(8779);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(7568);
    ref.push(7568);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6099);
    ref.push(6099);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4613);
    ref.push(4613);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1023);
    ref.push(1023);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(5713);
    ref.push(5713);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(2880);
    ref.push(2880);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(4326);
    ref.push(4326);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1630);
    ref.push(1630);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(3320);
    ref.push(3320);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(8307);
    ref.push(8307);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6016);
    ref.push(6016);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(8776);
    ref.push(8776);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(9856);
    ref.push(9856);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5200);
    ref.push(5200);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2244);
    ref.push(2244);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(3991);
    ref.push(3991);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(9066);
    ref.push(9066);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9319);
    ref.push(9319);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(2562);
    ref.push(2562);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(3833);
    ref.push(3833);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(3704);
    ref.push(3704);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(9189);
    ref.push(9189);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(4383);
    ref.push(4383);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2314);
    ref.push(2314);

//len_list: 4
//==============================


//==============================
    submit.push(5907);
    ref.push(5907);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(5745);
    ref.push(5745);

//len_list: 5
//==============================


//==============================
    submit.push(4307);
    ref.push(4307);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(121);
    ref.push(121);

//len_list: 6
//==============================


//==============================
    submit.push(8880);
    ref.push(8880);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3377);
    ref.push(3377);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(9307);
    ref.push(9307);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8668);
    ref.push(8668);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(7580);
    ref.push(7580);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(4954);
    ref.push(4954);

//len_list: 11
//==============================


//==============================
    submit.push(2654);
    ref.push(2654);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(4760);
    ref.push(4760);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(6789);
    ref.push(6789);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(6501);
    ref.push(6501);

//len_list: 12
//==============================


//==============================
    submit.push(3854);
    ref.push(3854);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(6647);
    ref.push(6647);

//len_list: 13
//==============================


//==============================
    submit.push(5107);
    ref.push(5107);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(4300);
    ref.push(4300);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(9883);
    ref.push(9883);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(6501);
    ref.push(6501);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(1240);
    ref.push(1240);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4607);
    ref.push(4607);

//len_list: 9
//==============================


//==============================
    submit.push(1104);
    ref.push(1104);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(8163);
    ref.push(8163);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(6046);
    ref.push(6046);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(5034);
    ref.push(5034);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7172);
    ref.push(7172);

//len_list: 6
//==============================


//==============================
    submit.push(7710);
    ref.push(7710);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(6577);
    ref.push(6577);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1824);
    ref.push(1824);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(441);
    ref.push(441);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(442);
    ref.push(442);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(6734);
    ref.push(6734);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(2416);
    ref.push(2416);

//len_list: 4
//==============================


//==============================
    submit.push(1570);
    ref.push(1570);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6150);
    ref.push(6150);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(279);
    ref.push(279);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(879);
    ref.push(879);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(626);
    ref.push(626);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(3743);
    ref.push(3743);

//len_list: 8
//==============================


//==============================
    submit.push(650);
    ref.push(650);

//len_list: 9
//==============================


//==============================
    submit.push(3017);
    ref.push(3017);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5382);
    ref.push(5382);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(4727);
    ref.push(4727);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5267);
    ref.push(5267);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(7530);
    ref.push(7530);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(3108);
    ref.push(3108);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(8330);
    ref.push(8330);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(730);
    ref.push(730);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(8275);
    ref.push(8275);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(1812);
    ref.push(1812);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(4599);
    ref.push(4599);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5913);
    ref.push(5913);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(4709);
    ref.push(4709);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6921);
    ref.push(6921);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6872);
    ref.push(6872);

//len_list: 5
//==============================


//==============================
    submit.push(6420);
    ref.push(6420);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7325);
    ref.push(7325);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(1277);
    ref.push(1277);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(4718);
    ref.push(4718);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(8399);
    ref.push(8399);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(2468);
    ref.push(2468);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6807);
    ref.push(6807);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(650);
    ref.push(650);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(9605);
    ref.push(9605);

//len_list: 5
//==============================


//==============================
    submit.push(788);
    ref.push(788);

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(6945);
    ref.push(6945);

//len_list: 6
//==============================


//==============================
    submit.push(1673);
    ref.push(1673);

//len_list: 7
//==============================


//==============================
    submit.push(2435);
    ref.push(2435);

//len_list: 8
//==============================


//==============================
    submit.push(1254);
    ref.push(1254);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(1777);
    ref.push(1777);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(8893);
    ref.push(8893);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(7545);
    ref.push(7545);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6402);
    ref.push(6402);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(6675);
    ref.push(6675);

//len_list: 3
//==============================


//==============================
    submit.push(219);
    ref.push(219);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(8544);
    ref.push(8544);

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(1223);
    ref.push(1223);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9635);
    ref.push(9635);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(6431);
    ref.push(6431);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(4783);
    ref.push(4783);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(978);
    ref.push(978);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(9264);
    ref.push(9264);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1664);
    ref.push(1664);

//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.push(5166);
    ref.push(5166);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3484);
    ref.push(3484);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(8672);
    ref.push(8672);

//len_list: 6
//==============================


//==============================
    submit.push(6859);
    ref.push(6859);

//len_list: 7
//==============================


//==============================
    submit.push(9485);
    ref.push(9485);

//len_list: 8
//==============================


//==============================
    submit.push(5200);
    ref.push(5200);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(1575);
    ref.push(1575);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(8747);
    ref.push(8747);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(5053);
    ref.push(5053);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(2256);
    ref.push(2256);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(6515);
    ref.push(6515);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2427);
    ref.push(2427);

//len_list: 5
//==============================


//==============================
    submit.push(1641);
    ref.push(1641);

//len_list: 6
//==============================


//==============================
    submit.push(1162);
    ref.push(1162);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    submit.push(8524);
    ref.push(8524);

//len_list: 6
//==============================


//==============================
    submit.push(9087);
    ref.push(9087);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(1618);
    ref.push(1618);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 6
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(3350);
    ref.push(3350);

//len_list: 3
//==============================


//==============================
    submit.push(8675);
    ref.push(8675);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(7720);
    ref.push(7720);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2074);
    ref.push(2074);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(5518);
    ref.push(5518);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(9361);
    ref.push(9361);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 2
//==============================


//==============================
    submit.push(974);
    ref.push(974);

//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(1789);
    ref.push(1789);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(667);
    ref.push(667);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    submit.push(204);
    ref.push(204);

//len_list: 5
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 3
//==============================


//==============================
    submit.push(5276);
    ref.push(5276);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2282);
    ref.push(2282);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(1557);
    ref.push(1557);

//len_list: 6
//==============================


//==============================
    submit.push(8373);
    ref.push(8373);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(7894);
    ref.push(7894);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(1885);
    ref.push(1885);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(628);
    ref.push(628);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(5253);
    ref.push(5253);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(5074);
    ref.push(5074);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(8756);
    ref.push(8756);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(2288);
    ref.push(2288);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4618);
    ref.push(4618);

//len_list: 9
//==============================


//==============================
    submit.push(1716);
    ref.push(1716);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(4363);
    ref.push(4363);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8218);
    ref.push(8218);

//len_list: 9
//==============================


//==============================
    submit.push(1813);
    ref.push(1813);

//len_list: 10
//==============================


//==============================
    submit.push(4585);
    ref.push(4585);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(6268);
    ref.push(6268);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(4813);
    ref.push(4813);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(5210);
    ref.push(5210);

//len_list: 10
//==============================


}
