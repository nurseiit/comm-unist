
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (291,1108)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(291)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(57);
    ref.push(57);

//len_list: 1
//==============================


//==============================
    submit.push(2125);
    ref.push(2125);

//len_list: 2
//==============================


//==============================
    submit.push(2889);
    ref.push(2889);

//len_list: 3
//==============================


//==============================
    submit.push(1187);
    ref.push(1187);

//len_list: 4
//==============================


//==============================
    submit.push(3656);
    ref.push(3656);

//len_list: 5
//==============================


//==============================
    submit.push(4340);
    ref.push(4340);

//len_list: 6
//==============================


//==============================
    submit.push(408);
    ref.push(408);

//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(2250);
    ref.push(2250);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(5367);
    ref.push(5367);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3635);
    ref.push(3635);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(4709);
    ref.push(4709);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(3697);
    ref.push(3697);

//len_list: 7
//==============================


//==============================
    submit.push(4623);
    ref.push(4623);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(5970);
    ref.push(5970);

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
    submit.push(7250);
    ref.push(7250);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 23
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
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3633);
    ref.push(3633);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(7451);
    ref.push(7451);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(8708);
    ref.push(8708);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4561);
    ref.push(4561);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(8771);
    ref.push(8771);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
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
    submit.push(7027);
    ref.push(7027);

//len_list: 7
//==============================


//==============================
    submit.push(1692);
    ref.push(1692);

//len_list: 8
//==============================


//==============================
    submit.push(3581);
    ref.push(3581);

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
    submit.push(7199);
    ref.push(7199);

//len_list: 10
//==============================


//==============================
    submit.push(3725);
    ref.push(3725);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
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
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4041);
    ref.push(4041);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(620);
    ref.push(620);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(9841);
    ref.push(9841);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    submit.push(4125);
    ref.push(4125);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(3941);
    ref.push(3941);

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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(7103);
    ref.push(7103);

//len_list: 7
//==============================


//==============================
    submit.push(933);
    ref.push(933);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(2835);
    ref.push(2835);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(6477);
    ref.push(6477);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4754);
    ref.push(4754);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(9985);
    ref.push(9985);

//len_list: 7
//==============================


//==============================
    submit.push(5996);
    ref.push(5996);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(2323);
    ref.push(2323);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(501);
    ref.push(501);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(3865);
    ref.push(3865);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 76
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
    submit.push(4164);
    ref.push(4164);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(1866);
    ref.push(1866);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(1818);
    ref.push(1818);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(325);
    ref.push(325);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(9006);
    ref.push(9006);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(7235);
    ref.push(7235);

//len_list: 9
//==============================


//==============================
    submit.push(8624);
    ref.push(8624);

//len_list: 10
//==============================


//==============================
    submit.push(3152);
    ref.push(3152);

//len_list: 11
//==============================


//==============================
    submit.push(7473);
    ref.push(7473);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(9344);
    ref.push(9344);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 92
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
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5342);
    ref.push(5342);

//len_list: 11
//==============================


//==============================
    submit.push(9532);
    ref.push(9532);

//len_list: 12
//==============================


//==============================
    submit.push(4346);
    ref.push(4346);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 98
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(1214);
    ref.push(1214);

//len_list: 10
//==============================


//==============================
    submit.push(7303);
    ref.push(7303);

//len_list: 11
//==============================


//==============================
    submit.push(2607);
    ref.push(2607);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
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
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    submit.push(4981);
    ref.push(4981);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7965);
    ref.push(7965);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(2781);
    ref.push(2781);

//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 111
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
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(2056);
    ref.push(2056);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(640);
    ref.push(640);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(2319);
    ref.push(2319);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
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
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(6472);
    ref.push(6472);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(8192);
    ref.push(8192);

//len_list: 8
//==============================


//==============================
    submit.push(1562);
    ref.push(1562);

//len_list: 9
//==============================


//==============================
    submit.push(2440);
    ref.push(2440);

//len_list: 10
//==============================


//==============================
    submit.push(2985);
    ref.push(2985);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1645);
    ref.push(1645);

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
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
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
    submit.push(9281);
    ref.push(9281);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(6459);
    ref.push(6459);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8257);
    ref.push(8257);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(7792);
    ref.push(7792);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(9799);
    ref.push(9799);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(6241);
    ref.push(6241);

//len_list: 7
//==============================


//==============================
    submit.push(4323);
    ref.push(4323);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(2158);
    ref.push(2158);

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
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(7836);
    ref.push(7836);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(5837);
    ref.push(5837);

//len_list: 7
//==============================


//==============================
    submit.push(6216);
    ref.push(6216);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(4931);
    ref.push(4931);

//len_list: 7
//==============================


//==============================
    submit.push(9820);
    ref.push(9820);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(8129);
    ref.push(8129);

//len_list: 8
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 7
//==============================


//==============================
    submit.push(9273);
    ref.push(9273);

//len_list: 8
//==============================


//==============================
    submit.push(706);
    ref.push(706);

//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 183
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
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(7127);
    ref.push(7127);

//len_list: 7
//==============================


//==============================
    submit.push(7038);
    ref.push(7038);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(82);
    ref.push(82);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(2683);
    ref.push(2683);

//len_list: 10
//==============================


//==============================
    submit.push(1906);
    ref.push(1906);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(6725);
    ref.push(6725);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
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
    submit.push(8471);
    ref.push(8471);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
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
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 202
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
    submit.push(5736);
    ref.push(5736);

//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(254);
    ref.push(254);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(7430);
    ref.push(7430);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 211
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
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 6
//==============================


//==============================
    submit.push(3561);
    ref.push(3561);

//len_list: 7
//==============================


//==============================
    submit.push(5015);
    ref.push(5015);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(6071);
    ref.push(6071);

//len_list: 9
//==============================


//==============================
    submit.push(2924);
    ref.push(2924);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(3789);
    ref.push(3789);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 218
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
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5845);
    ref.push(5845);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 223
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
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(1994);
    ref.push(1994);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(3196);
    ref.push(3196);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(4615);
    ref.push(4615);

//len_list: 12
//==============================


//==============================
    submit.push(2576);
    ref.push(2576);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(9734);
    ref.push(9734);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(1702);
    ref.push(1702);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(7465);
    ref.push(7465);

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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(2468);
    ref.push(2468);

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(3027);
    ref.push(3027);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
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
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 259
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
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(5893);
    ref.push(5893);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(9094);
    ref.push(9094);

//len_list: 9
//==============================


//==============================
    submit.push(5986);
    ref.push(5986);

//len_list: 10
//==============================


//==============================
    submit.push(3240);
    ref.push(3240);

//len_list: 11
//==============================


//==============================
    submit.push(5968);
    ref.push(5968);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(4471);
    ref.push(4471);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
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
    submit.push(9201);
    ref.push(9201);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(7357);
    ref.push(7357);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(5462);
    ref.push(5462);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(5078);
    ref.push(5078);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(6122);
    ref.push(6122);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(9345);
    ref.push(9345);

//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(4847);
    ref.push(4847);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(6516);
    ref.push(6516);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(3672);
    ref.push(3672);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(4944);
    ref.push(4944);

//len_list: 17
//==============================


//==============================
    submit.push(9201);
    ref.push(9201);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 290
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
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(5886);
    ref.push(5886);

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
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(5192);
    ref.push(5192);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(4674);
    ref.push(4674);

//len_list: 18
//==============================


//==============================
    submit.push(6051);
    ref.push(6051);

//len_list: 19
//==============================


//==============================
    submit.push(3554);
    ref.push(3554);

//len_list: 20
//==============================


//==============================
    submit.push(9275);
    ref.push(9275);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(4757);
    ref.push(4757);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(1241);
    ref.push(1241);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(8944);
    ref.push(8944);

//len_list: 17
//==============================


//==============================
    submit.push(7315);
    ref.push(7315);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(7449);
    ref.push(7449);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9244);
    ref.push(9244);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(4425);
    ref.push(4425);

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(8330);
    ref.push(8330);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.push(8309);
    ref.push(8309);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.push(8407);
    ref.push(8407);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 341
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
    submit.push(9266);
    ref.push(9266);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(630);
    ref.push(630);

//len_list: 16
//==============================


//==============================
    submit.push(8550);
    ref.push(8550);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(9309);
    ref.push(9309);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(7027);
    ref.push(7027);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(9490);
    ref.push(9490);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(7567);
    ref.push(7567);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(4933);
    ref.push(4933);

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
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(2484);
    ref.push(2484);

//len_list: 18
//==============================


//==============================
    submit.push(2188);
    ref.push(2188);

//len_list: 19
//==============================


//==============================
    submit.push(1658);
    ref.push(1658);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3064);
    ref.push(3064);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(5411);
    ref.push(5411);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3447);
    ref.push(3447);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(300);
    ref.push(300);

//len_list: 22
//==============================


//==============================
    submit.push(9265);
    ref.push(9265);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(1888);
    ref.push(1888);

//len_list: 24
//==============================


//==============================
    submit.push(6145);
    ref.push(6145);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(8484);
    ref.push(8484);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(8685);
    ref.push(8685);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(4174);
    ref.push(4174);

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(103);
    ref.push(103);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(4638);
    ref.push(4638);

//len_list: 18
//==============================


//==============================
    submit.push(5153);
    ref.push(5153);

//len_list: 19
//==============================


//==============================
    submit.push(166);
    ref.push(166);

//len_list: 20
//==============================


//==============================
    submit.push(8681);
    ref.push(8681);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(9098);
    ref.push(9098);

//len_list: 20
//==============================


//==============================
    submit.push(7574);
    ref.push(7574);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(2828);
    ref.push(2828);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(9160);
    ref.push(9160);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(1560);
    ref.push(1560);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(2643);
    ref.push(2643);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(8125);
    ref.push(8125);

//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(948);
    ref.push(948);

//len_list: 19
//==============================


//==============================
    submit.push(890);
    ref.push(890);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
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
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(8050);
    ref.push(8050);

//len_list: 19
//==============================


//==============================
    submit.push(2585);
    ref.push(2585);

//len_list: 20
//==============================


//==============================
    submit.push(3681);
    ref.push(3681);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(9649);
    ref.push(9649);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 474
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
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    submit.push(3338);
    ref.push(3338);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(2177);
    ref.push(2177);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 489
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
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(3892);
    ref.push(3892);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
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
    submit.push(6006);
    ref.push(6006);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(520);
    ref.push(520);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(562);
    ref.push(562);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(392);
    ref.push(392);

//len_list: 12
//==============================


//==============================
    submit.push(889);
    ref.push(889);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(6670);
    ref.push(6670);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    submit.push(6250);
    ref.push(6250);

//len_list: 13
//==============================


//==============================
    submit.push(9359);
    ref.push(9359);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(9821);
    ref.push(9821);

//len_list: 12
//==============================


//==============================
    submit.push(6846);
    ref.push(6846);

//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 516
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
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(2804);
    ref.push(2804);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    submit.push(8585);
    ref.push(8585);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 519
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
    submit.push(3122);
    ref.push(3122);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(9509);
    ref.push(9509);

//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 521
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 7
//==============================


//==============================
    submit.push(1223);
    ref.push(1223);

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(2147);
    ref.push(2147);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4069);
    ref.push(4069);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(1892);
    ref.push(1892);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(4597);
    ref.push(4597);

//len_list: 9
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.push(8645);
    ref.push(8645);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(5678);
    ref.push(5678);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 535
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
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 9
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 9
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 8
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 8
//==============================


//==============================
    submit.push(8879);
    ref.push(8879);

//len_list: 9
//==============================


//==============================
    submit.push(7242);
    ref.push(7242);

//len_list: 10
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(2317);
    ref.push(2317);

//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.push(6196);
    ref.push(6196);

//len_list: 12
//==============================


//==============================
    submit.push(4547);
    ref.push(4547);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 11
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    submit.push(6543);
    ref.push(6543);

//len_list: 11
//==============================


//==============================
    submit.push(123);
    ref.push(123);

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 12
//==============================


//==============================
    submit.push(4556);
    ref.push(4556);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 12
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 552
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
    submit.push(6240);
    ref.push(6240);

//len_list: 11
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 10
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 10
//==============================


//==============================
    submit.push(8605);
    ref.push(8605);

//len_list: 11
//==============================


//==============================
    submit.push(5109);
    ref.push(5109);

//len_list: 12
//==============================


//==============================
    submit.push(344);
    ref.push(344);

//len_list: 13
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 13
//==============================


//==============================
    submit.push(6698);
    ref.push(6698);

//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 14
//==============================


//==============================
    submit.push(9656);
    ref.push(9656);

//len_list: 15
//==============================


//==============================
    submit.push(2624);
    ref.push(2624);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(29);
    ref.push(29);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(947);
    ref.push(947);

//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(3109);
    ref.push(3109);

//len_list: 16
//==============================


//==============================
    submit.push(6370);
    ref.push(6370);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(4447);
    ref.push(4447);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(3119);
    ref.push(3119);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(731);
    ref.push(731);

//len_list: 20
//==============================


//==============================
    submit.push(7697);
    ref.push(7697);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(8120);
    ref.push(8120);

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3121);
    ref.push(3121);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(4864);
    ref.push(4864);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(575);
    ref.push(575);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(5993);
    ref.push(5993);

//len_list: 20
//==============================


//==============================
    submit.push(8178);
    ref.push(8178);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(3806);
    ref.push(3806);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(9359);
    ref.push(9359);

//len_list: 19
//==============================


//==============================
    submit.push(7030);
    ref.push(7030);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(4170);
    ref.push(4170);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(1158);
    ref.push(1158);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(7793);
    ref.push(7793);

//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    submit.push(8562);
    ref.push(8562);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


}
