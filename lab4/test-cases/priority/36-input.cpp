
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (19,1693)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(9857);
    ref.push(9857);

//len_list: 1
//==============================


//==============================
    submit.push(4762);
    ref.push(4762);

//len_list: 2
//==============================


//==============================
    submit.push(4655);
    ref.push(4655);

//len_list: 3
//==============================


//==============================
    submit.push(6710);
    ref.push(6710);

//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(2807);
    ref.push(2807);

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
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(1180);
    ref.push(1180);

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
    submit.push(9972);
    ref.push(9972);

//len_list: 4
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 3
//==============================


//==============================
    submit.push(182);
    ref.push(182);

//len_list: 4
//==============================


//==============================
    submit.push(8452);
    ref.push(8452);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
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
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 4
//==============================


//==============================
    submit.push(864);
    ref.push(864);

//len_list: 5
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7506);
    ref.push(7506);

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
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 5
//==============================


//==============================
    submit.push(7475);
    ref.push(7475);

//len_list: 6
//==============================


//==============================
    submit.push(8477);
    ref.push(8477);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(2910);
    ref.push(2910);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(7984);
    ref.push(7984);

//len_list: 9
//==============================


//==============================
    submit.push(6222);
    ref.push(6222);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5276);
    ref.push(5276);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(7912);
    ref.push(7912);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(3263);
    ref.push(3263);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 28
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
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 32
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
//num_require: 33
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
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8880);
    ref.push(8880);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(8327);
    ref.push(8327);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
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
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(7078);
    ref.push(7078);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5742);
    ref.push(5742);

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
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1607);
    ref.push(1607);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(597);
    ref.push(597);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(8782);
    ref.push(8782);

//len_list: 12
//==============================


//==============================
    submit.push(7800);
    ref.push(7800);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 59
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
//num_require: 60
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
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
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
    submit.push(5535);
    ref.push(5535);

//len_list: 9
//==============================


//==============================
    submit.push(7122);
    ref.push(7122);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 70
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
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(1574);
    ref.push(1574);

//len_list: 9
//==============================


//==============================
    submit.push(3142);
    ref.push(3142);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5436);
    ref.push(5436);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(6000);
    ref.push(6000);

//len_list: 12
//==============================


//==============================
    submit.push(9583);
    ref.push(9583);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(6333);
    ref.push(6333);

//len_list: 14
//==============================


//==============================
    submit.push(4895);
    ref.push(4895);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(353);
    ref.push(353);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(8103);
    ref.push(8103);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(9058);
    ref.push(9058);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(5848);
    ref.push(5848);

//len_list: 15
//==============================


//==============================
    submit.push(4777);
    ref.push(4777);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(6048);
    ref.push(6048);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(5517);
    ref.push(5517);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(4549);
    ref.push(4549);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(4462);
    ref.push(4462);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(7780);
    ref.push(7780);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(7791);
    ref.push(7791);

//len_list: 14
//==============================


//==============================
    submit.push(6930);
    ref.push(6930);

//len_list: 15
//==============================


//==============================
    submit.push(4103);
    ref.push(4103);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(3134);
    ref.push(3134);

//len_list: 15
//==============================


//==============================
    submit.push(7372);
    ref.push(7372);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(1782);
    ref.push(1782);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(5416);
    ref.push(5416);

//len_list: 17
//==============================


//==============================
    submit.push(5659);
    ref.push(5659);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(8214);
    ref.push(8214);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(7416);
    ref.push(7416);

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(20) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1298) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9822) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(936) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2134) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7406) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5157) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8249) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3879) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5861) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9195) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(191) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9256) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9368) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9937) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(778) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1503) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(76) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3412) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9107) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9861) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3540) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9172) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(161) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6000) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3023) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(400) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2217) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8604) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1507) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5719) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4154) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9698) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4398) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(18) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1313) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1153) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8663) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2870) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5793) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2784) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1532) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4319) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3681) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1285) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9913) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4282) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1988) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2032) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9752) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9803) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4705) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2803) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7720) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1789) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3617) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8996) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8292) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5777) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(539) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6203) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3301) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7251) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3690) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4788) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9019) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8441) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5398) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4599) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5694) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7268) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3819) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(254) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2039) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3640) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1287) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8835) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6773) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3617) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7386) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8298) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9041) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8241) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3856) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4893) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2494) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4938) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4613) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2554) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2514) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5966) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4646) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9889) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8227) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4267) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1319) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2431) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1523) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9916) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3646) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8602) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1234) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5739) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2660) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2355) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8071) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4346) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8636) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9082) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7480) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7458) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6319) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5569) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7199) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7432) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6075) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6726) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8130) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3673) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3184) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2141) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6618) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5599) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8674) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7114) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9227) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8155) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3842) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1987) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9047) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5189) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2876) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8989) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(912) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(617) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(737) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5202) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7079) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2860) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4252) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9096) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8924) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7262) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(450) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9415) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6049) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3393) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7726) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2223) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7036) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3331) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(273) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3247) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6657) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5904) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(817) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5087) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7927) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1046) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7574) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3525) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1012) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6852) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7628) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7878) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9339) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(315) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7127) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7669) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4623) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1634) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3065) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(611) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7680) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8106) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9970) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4256) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3238) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6059) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1177) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7419) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4361) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3229) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8644) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4166) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9795) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9655) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4505) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(687) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2254) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5428) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3949) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3791) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2352) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6434) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4260) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3229) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4053) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1933) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(711) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(676) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9447) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5176) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1483) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7238) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5420) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1695) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2042) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5489) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9613) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9103) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8344) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9603) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2801) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8985) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6348) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(144) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4814) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5693) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6843) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9605) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9054) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6254) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(556) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9192) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1742) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7015) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6262) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9470) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4221) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4673) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4114) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9219) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8917) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6617) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(952) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(444) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4144) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6916) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9404) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1952) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8140) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9223) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3795) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2281) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5414) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9622) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8207) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8249) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4653) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5402) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3447) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5008) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4204) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6863) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3338) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4160) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3080) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8452) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9990) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9704) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5300) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2037) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6699) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(364) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6245) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6972) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5599) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5122) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5523) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7863) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(822) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3818) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(615) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9798) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7987) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3813) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(388) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2789) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3158) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8566) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5950) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9519) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3764) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3062) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9342) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1415) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3834) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3353) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1395) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9311) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4556) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1334) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(426) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9316) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4540) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3993) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8325) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3562) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2737) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8795) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3722) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9053) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5516) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(295) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(684) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7319) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9008) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1013
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1014
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1015
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(338) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1016
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3750) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1017
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4059) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1018
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1019
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1020
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1021
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1022
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1023
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1024
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1025
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1026
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1027
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1028
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6917) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1029
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1030
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(989) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1031
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5619) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1032
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1033
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1444) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3611) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1034
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1319) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3673) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1035
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1036
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1037
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1038
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1039
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1040
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2411) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1041
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1042
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1043
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3723) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1044
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1045
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1046
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1047
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1048
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1049
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1050
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1051
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5294) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1052
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1053
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1054
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9409) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1055
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9736) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1056
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1057
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8477) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1058
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1059
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1060
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1061
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1062
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7516) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4723) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1063
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6328) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1064
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1065
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1066
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1067
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1068
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1069
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1507) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1070
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2197) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1639) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2640) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1071
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1072
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1073
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9583) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1074
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1075
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1076
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1077
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1078
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1079
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1080
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1081
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1082
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1083
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1084
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1085
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4819) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1086
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8266) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2029) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1087
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1088
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1089
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1090
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1091
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3348) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1092
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1093
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1094
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1095
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1096
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1097
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7691) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1098
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1099
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1100
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1101
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1102
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1103
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1104
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1105
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1106
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1107
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(245) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1108
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1109
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1110
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9575) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1111
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1112
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1113
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1114
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1115
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1116
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1396) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1117
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1118
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2712) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1119
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1120
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1121
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1122
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8606) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1123
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1011) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1124
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1125
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1126
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7588) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1127
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1997) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1128
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1129
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4386) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1130
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4456) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1131
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1132
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(500) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1133
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1134
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1877) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1135
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1136
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1137
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1138
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1139
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1140
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4916) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1141
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1142
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1143
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3968) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1144
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1145
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1146
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(928) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4092) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1147
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1148
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1149
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1150
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1151
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1152
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1153
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6711) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1154
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1155
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3011) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8508) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1156
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1157
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1158
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1159
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1160
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1161
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8565) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1162
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1163
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(625) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1164
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1165
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1166
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1167
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1168
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4320) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2260) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1169
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1170
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1171
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1172
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1173
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3727) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1174
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4283) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2195) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1175
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4969) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5287) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1176
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1177
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8984) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1178
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5732) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1651) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(171) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1179
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1180
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1755) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1181
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1182
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1183
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1184
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1185
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1186
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1187
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1188
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5568) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1189
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1190
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1191
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1192
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5231) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1193
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1194
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1195
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1196
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3941) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(765) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1197
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1198
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1199
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1200
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5323) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1201
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1202
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1203
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1204
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1205
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1206
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1207
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6624) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1208
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1209
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1210
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1211
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9914) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1212
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1213
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(452) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1214
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4208) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6997) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1215
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1216
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1217
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1218
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1219
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1220
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1221
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1222
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1223
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(529) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1224
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1225
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1226
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(781) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1227
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1228
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1229
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1230
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1231
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1232
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7468) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2049) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1233
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1234
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1235
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1236
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1237
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1238
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1239
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1240
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1241
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1242
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1243
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1244
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6673) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8662) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1245
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1246
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1247
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1248
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1249
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1250
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1251
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1252
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1253
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1254
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1255
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1988) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(63) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1256
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1257
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1813) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1258
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1259
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1260
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1261
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1262
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1263
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3471) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1264
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1265
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1266
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1267
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1268
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4304) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7540) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1269
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1270
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1271
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1272
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1845) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1273
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1274
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3077) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1275
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1276
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9320) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1277
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1278
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5458) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1279
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5821) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1280
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1281
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1282
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1283
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5021) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1284
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1285
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1286
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1287
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1288
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1289
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1290
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1291
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7435) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1292
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1293
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1294
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1295
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1296
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1297
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9701) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1298
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1499) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1299
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9141) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1300
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1301
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1302
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1303
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1304
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1305
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1306
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1307
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1308
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3828) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1309
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1310
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1311
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1312
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1313
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6708) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1314
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1315
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1316
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(230) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1317
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5656) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1318
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1319
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1320
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1321
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1322
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1323
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1324
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1325
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1326
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1327
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1328
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1329
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1330
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1331
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1332
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1333
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1334
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1335
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1336
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5077) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5608) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1337
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5876) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5342) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1338
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1303) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7739) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3719) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1339
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1340
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1341
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1342
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1343
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1344
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1345
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1346
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1347
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1348
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1349
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1350
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1351
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1352
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1353
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1766) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2814) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1354
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1355
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6020) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1356
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1357
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1358
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1359
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1360
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1361
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1362
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1363
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1364
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4469) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1365
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1366
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1367
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1368
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1369
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1370
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1371
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1372
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1373
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1374
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1375
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1376
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1377
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(568) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7939) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2152) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1378
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1379
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6105) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1380
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1381
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1685) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1382
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1383
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1384
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1385
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4864) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1386
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4998) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1387
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1388
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1389
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1390
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1391
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1392
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9170) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1393
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(432) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1394
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1395
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1396
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4745) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1397
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1398
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1399
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1400
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1401
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1402
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1403
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8158) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1404
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1405
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1406
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1407
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1408
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1409
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9447) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7340) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3126) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1410
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4660) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1411
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1412
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1413
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1414
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5695) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1415
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1416
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1417
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1418
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1419
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1420
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1421
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1422
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8319) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1423
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1424
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1425
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1426
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1427
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1428
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3338) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1429
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8726) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8913) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7069) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1430
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1431
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1432
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1433
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1434
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5299) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3981) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3728) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1435
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1436
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1437
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6367) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1438
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1439
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1440
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1441
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3140) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(362) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1442
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9221) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1443
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1444
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1445
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1446
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1163) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1447
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1448
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4924) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9960) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1449
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1450
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1451
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(739) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9725) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1452
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8090) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1453
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1454
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1455
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1456
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1457
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2036) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1458
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1459
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1460
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1461
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1462
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1463
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1464
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1465
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1466
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1467
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(909) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1468
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1469
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1470
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9221) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1471
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1472
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1473
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1474
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1475
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1476
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1477
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1478
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7365) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9172) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1479
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1480
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1481
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(140) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1482
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1483
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5425) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1484
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1485
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1486
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1487
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1488
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1489
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9888) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1490
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1491
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9068) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1492
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1493
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1494
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3107) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1495
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4172) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5518) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1496
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1497
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1498
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1499
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1500
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(677) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1501
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3073) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1502
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1503
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1504
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1505
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9869) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1506
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1507
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1508
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1509
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1510
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1511
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9112) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1512
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1513
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1514
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1515
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1516
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1517
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1518
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1519
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7738) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1520
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(688) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1521
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1522
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1523
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5280) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1524
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1525
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1526
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1527
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1528
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9851) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8541) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1529
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9762) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7840) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1530
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1531
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7243) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(833) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1532
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1533
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1534
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1535
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1536
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1537
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1538
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3224) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1539
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5758) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1540
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3494) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1541
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8943) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1542
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1543
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7309) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1544
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1545
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1546
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1547
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1548
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1549
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1550
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1551
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1552
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1553
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1554
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1555
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1556
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1557
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1558
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1559
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1560
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1561
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(520) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1562
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1563
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1564
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1764) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1565
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4038) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1566
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1567
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8383) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1568
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1569
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9252) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1570
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1571
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1572
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1573
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3321) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1574
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1575
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1576
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1577
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1578
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1579
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(438) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1580
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1581
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1582
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5480) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1583
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1584
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1585
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1586
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3971) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1587
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1588
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1952) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5759) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1589
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9357) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1590
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1591
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1592
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3780) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8367) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4243) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1593
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1496) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1594
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2812) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1595
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1596
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1597
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1598
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7948) , runtime_error );
    

//len_list: 19
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 19
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1599
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1600
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


}
