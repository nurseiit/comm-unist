
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (275,724)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(2726);
    ref.push(2726);

//len_list: 1
//==============================


//==============================
    submit.push(4979);
    ref.push(4979);

//len_list: 2
//==============================


//==============================
    submit.push(454);
    ref.push(454);

//len_list: 3
//==============================


//==============================
    submit.push(4751);
    ref.push(4751);

//len_list: 4
//==============================


//==============================
    submit.push(3839);
    ref.push(3839);

//len_list: 5
//==============================


//==============================
    submit.push(9178);
    ref.push(9178);

//len_list: 6
//==============================


//==============================
    submit.push(9305);
    ref.push(9305);

//len_list: 7
//==============================


//==============================
    submit.push(5360);
    ref.push(5360);

//len_list: 8
//==============================


//==============================
    submit.push(814);
    ref.push(814);

//len_list: 9
//==============================


//==============================
    submit.push(9819);
    ref.push(9819);

//len_list: 10
//==============================


//==============================
    submit.push(3027);
    ref.push(3027);

//len_list: 11
//==============================


//==============================
    submit.push(3509);
    ref.push(3509);

//len_list: 12
//==============================


//==============================
    submit.push(1978);
    ref.push(1978);

//len_list: 13
//==============================


//==============================
    submit.push(3934);
    ref.push(3934);

//len_list: 14
//==============================


//==============================
    submit.push(8078);
    ref.push(8078);

//len_list: 15
//==============================


//==============================
    submit.push(1905);
    ref.push(1905);

//len_list: 16
//==============================


//==============================
    submit.push(6420);
    ref.push(6420);

//len_list: 17
//==============================


//==============================
    submit.push(9919);
    ref.push(9919);

//len_list: 18
//==============================


//==============================
    submit.push(9695);
    ref.push(9695);

//len_list: 19
//==============================


//==============================
    submit.push(2437);
    ref.push(2437);

//len_list: 20
//==============================


//==============================
    submit.push(8911);
    ref.push(8911);

//len_list: 21
//==============================


//==============================
    submit.push(3539);
    ref.push(3539);

//len_list: 22
//==============================


//==============================
    submit.push(6406);
    ref.push(6406);

//len_list: 23
//==============================


//==============================
    submit.push(4196);
    ref.push(4196);

//len_list: 24
//==============================


//==============================
    submit.push(4376);
    ref.push(4376);

//len_list: 25
//==============================


//==============================
    submit.push(5124);
    ref.push(5124);

//len_list: 26
//==============================


//==============================
    submit.push(7803);
    ref.push(7803);

//len_list: 27
//==============================


//==============================
    submit.push(4759);
    ref.push(4759);

//len_list: 28
//==============================


//==============================
    submit.push(8172);
    ref.push(8172);

//len_list: 29
//==============================


//==============================
    submit.push(3824);
    ref.push(3824);

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
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(3932);
    ref.push(3932);

//len_list: 29
//==============================


//==============================
    submit.push(180);
    ref.push(180);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(832);
    ref.push(832);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(675);
    ref.push(675);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(7681);
    ref.push(7681);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(1961);
    ref.push(1961);

//len_list: 31
//==============================


//==============================
    submit.push(959);
    ref.push(959);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(9265);
    ref.push(9265);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(2080);
    ref.push(2080);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(4194);
    ref.push(4194);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
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
    submit.push(467);
    ref.push(467);

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
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(9360);
    ref.push(9360);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(556);
    ref.push(556);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(7416);
    ref.push(7416);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(987);
    ref.push(987);

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
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(6587);
    ref.push(6587);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(7124);
    ref.push(7124);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
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
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(1321);
    ref.push(1321);

//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(2318);
    ref.push(2318);

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
    submit.push(9597);
    ref.push(9597);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(8044);
    ref.push(8044);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(7004);
    ref.push(7004);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(3095);
    ref.push(3095);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(3628);
    ref.push(3628);

//len_list: 30
//==============================


//==============================
    submit.push(3683);
    ref.push(3683);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 64
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
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(5731);
    ref.push(5731);

//len_list: 30
//==============================


//==============================
    submit.push(3470);
    ref.push(3470);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(3413);
    ref.push(3413);

//len_list: 31
//==============================


//==============================
    submit.push(9367);
    ref.push(9367);

//len_list: 32
//==============================


//==============================
    submit.push(2794);
    ref.push(2794);

//len_list: 33
//==============================


//==============================
    submit.push(3175);
    ref.push(3175);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 72
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
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(743);
    ref.push(743);

//len_list: 34
//==============================


//==============================
    submit.push(1603);
    ref.push(1603);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(1957);
    ref.push(1957);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
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
//num_require: 78
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
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(1274);
    ref.push(1274);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 83
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
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(7126);
    ref.push(7126);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4836);
    ref.push(4836);

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
//num_require: 93
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
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(8198);
    ref.push(8198);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(1187);
    ref.push(1187);

//len_list: 35
//==============================


//==============================
    submit.push(5385);
    ref.push(5385);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(6360);
    ref.push(6360);

//len_list: 36
//==============================


//==============================
    submit.push(6133);
    ref.push(6133);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    submit.push(2579);
    ref.push(2579);

//len_list: 37
//==============================


//==============================
    submit.push(5610);
    ref.push(5610);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(1967);
    ref.push(1967);

//len_list: 38
//==============================


//==============================
    submit.push(2981);
    ref.push(2981);

//len_list: 39
//==============================


//==============================
    submit.push(559);
    ref.push(559);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
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
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(5502);
    ref.push(5502);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
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
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(2293);
    ref.push(2293);

//len_list: 38
//==============================


//==============================
    submit.push(7097);
    ref.push(7097);

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
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(2607);
    ref.push(2607);

//len_list: 39
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 38
//==============================


//==============================
    submit.push(3940);
    ref.push(3940);

//len_list: 39
//==============================


//==============================
    submit.push(8251);
    ref.push(8251);

//len_list: 40
//==============================


//==============================
    submit.push(3198);
    ref.push(3198);

//len_list: 41
//==============================


//==============================
    submit.push(5448);
    ref.push(5448);

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(5429);
    ref.push(5429);

//len_list: 42
//==============================


//==============================
    submit.push(6691);
    ref.push(6691);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(720);
    ref.push(720);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(3829);
    ref.push(3829);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(9314);
    ref.push(9314);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
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
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
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
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(4315);
    ref.push(4315);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(5573);
    ref.push(5573);

//len_list: 41
//==============================


//==============================
    submit.push(388);
    ref.push(388);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
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
    submit.push(9255);
    ref.push(9255);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
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
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(7714);
    ref.push(7714);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(5348);
    ref.push(5348);

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
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
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
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(4685);
    ref.push(4685);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(8556);
    ref.push(8556);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(1498);
    ref.push(1498);

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
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(2620);
    ref.push(2620);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 40
//==============================


//==============================
    submit.push(8602);
    ref.push(8602);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
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
//num_require: 157
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
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2760);
    ref.push(2760);

//len_list: 40
//==============================


//==============================
    submit.push(8101);
    ref.push(8101);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(5522);
    ref.push(5522);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(7218);
    ref.push(7218);

//len_list: 43
//==============================


//==============================
    submit.push(3873);
    ref.push(3873);

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
//num_require: 171
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
//num_require: 172
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
    submit.push(2814);
    ref.push(2814);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(565);
    ref.push(565);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(8036);
    ref.push(8036);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 187
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
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
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
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(4570);
    ref.push(4570);

//len_list: 42
//==============================


//==============================
    submit.push(261);
    ref.push(261);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
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
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1441);
    ref.push(1441);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
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
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(4080);
    ref.push(4080);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(3519);
    ref.push(3519);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(7390);
    ref.push(7390);

//len_list: 45
//==============================


//==============================
    submit.push(7989);
    ref.push(7989);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(4576);
    ref.push(4576);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
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
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 217
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
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(6604);
    ref.push(6604);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(5990);
    ref.push(5990);

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
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(8097);
    ref.push(8097);

//len_list: 40
//==============================


//==============================
    submit.push(7791);
    ref.push(7791);

//len_list: 41
//==============================


//==============================
    submit.push(1419);
    ref.push(1419);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(7089);
    ref.push(7089);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(5882);
    ref.push(5882);

//len_list: 42
//==============================


//==============================
    submit.push(6797);
    ref.push(6797);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
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
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(9211);
    ref.push(9211);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(7693);
    ref.push(7693);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
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
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
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
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(4519);
    ref.push(4519);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
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
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(9849);
    ref.push(9849);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(4187);
    ref.push(4187);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 41
//==============================


//==============================
    submit.push(4873);
    ref.push(4873);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
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
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 264
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
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(9218);
    ref.push(9218);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(2163);
    ref.push(2163);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(3021);
    ref.push(3021);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(3398);
    ref.push(3398);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(9361);
    ref.push(9361);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(7346);
    ref.push(7346);

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
//num_require: 283
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
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(6803);
    ref.push(6803);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
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
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(4318);
    ref.push(4318);

//len_list: 43
//==============================


//==============================
    submit.push(8772);
    ref.push(8772);

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
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(8559);
    ref.push(8559);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 289
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
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(7207);
    ref.push(7207);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 291
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
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(7629);
    ref.push(7629);

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
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(9147);
    ref.push(9147);

//len_list: 43
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 42
//==============================


//==============================
    submit.push(14);
    ref.push(14);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(1870);
    ref.push(1870);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(6854);
    ref.push(6854);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
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
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(3965);
    ref.push(3965);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(9489);
    ref.push(9489);

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
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
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
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
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
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(3200);
    ref.push(3200);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(1821);
    ref.push(1821);

//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
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
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 42
//==============================


//==============================
    submit.push(3695);
    ref.push(3695);

//len_list: 43
//==============================


//==============================
    submit.push(5150);
    ref.push(5150);

//len_list: 44
//==============================


//==============================
    submit.push(615);
    ref.push(615);

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
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 332
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
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 43
//==============================


//==============================
    submit.push(6126);
    ref.push(6126);

//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(9353);
    ref.push(9353);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 44
//==============================


//==============================
    submit.push(1874);
    ref.push(1874);

//len_list: 45
//==============================


//==============================
    submit.push(8548);
    ref.push(8548);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(5626);
    ref.push(5626);

//len_list: 47
//==============================


//==============================
    submit.push(7774);
    ref.push(7774);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(9168);
    ref.push(9168);

//len_list: 46
//==============================


//==============================
    submit.push(6625);
    ref.push(6625);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(4678);
    ref.push(4678);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 352
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
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(793);
    ref.push(793);

//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    submit.push(7706);
    ref.push(7706);

//len_list: 46
//==============================


//==============================
    submit.push(2775);
    ref.push(2775);

//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
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
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 45
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 44
//==============================


//==============================
    submit.push(7706);
    ref.push(7706);

//len_list: 45
//==============================


//==============================
    submit.push(1467);
    ref.push(1467);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 45
//==============================


//==============================
    submit.push(9194);
    ref.push(9194);

//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(2427);
    ref.push(2427);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 46
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 46
//==============================


//==============================
    submit.push(2009);
    ref.push(2009);

//len_list: 47
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 47
//==============================


//==============================
    submit.push(5580);
    ref.push(5580);

//len_list: 48
//==============================


//==============================
    submit.push(8150);
    ref.push(8150);

//len_list: 49
//==============================


//==============================
    submit.push(6035);
    ref.push(6035);

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
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(4624);
    ref.push(4624);

//len_list: 50
//==============================


//==============================
    submit.push(8161);
    ref.push(8161);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 379
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 48
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 48
//==============================


//==============================
    submit.push(3760);
    ref.push(3760);

//len_list: 49
//==============================


//==============================
    submit.push(6176);
    ref.push(6176);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 49
//==============================


//==============================
    submit.push(8617);
    ref.push(8617);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
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
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 49
//==============================


//==============================
    submit.push(7531);
    ref.push(7531);

//len_list: 50
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(1518);
    ref.push(1518);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 50
//==============================


//==============================
    submit.push(1686);
    ref.push(1686);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(728);
    ref.push(728);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(9536);
    ref.push(9536);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(778);
    ref.push(778);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(1690);
    ref.push(1690);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(9389);
    ref.push(9389);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


}
