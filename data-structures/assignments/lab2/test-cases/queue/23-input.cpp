
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (333,1944)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(333)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(3379);
    ref.push(3379);

//len_list: 1
//==============================


//==============================
    submit.push(2107);
    ref.push(2107);

//len_list: 2
//==============================


//==============================
    submit.push(8698);
    ref.push(8698);

//len_list: 3
//==============================


//==============================
    submit.push(6055);
    ref.push(6055);

//len_list: 4
//==============================


//==============================
    submit.push(3860);
    ref.push(3860);

//len_list: 5
//==============================


//==============================
    submit.push(226);
    ref.push(226);

//len_list: 6
//==============================


//==============================
    submit.push(2763);
    ref.push(2763);

//len_list: 7
//==============================


//==============================
    submit.push(8620);
    ref.push(8620);

//len_list: 8
//==============================


//==============================
    submit.push(9310);
    ref.push(9310);

//len_list: 9
//==============================


//==============================
    submit.push(3850);
    ref.push(3850);

//len_list: 10
//==============================


//==============================
    submit.push(8103);
    ref.push(8103);

//len_list: 11
//==============================


//==============================
    submit.push(1103);
    ref.push(1103);

//len_list: 12
//==============================


//==============================
    submit.push(9686);
    ref.push(9686);

//len_list: 13
//==============================


//==============================
    submit.push(8954);
    ref.push(8954);

//len_list: 14
//==============================


//==============================
    submit.push(2130);
    ref.push(2130);

//len_list: 15
//==============================


//==============================
    submit.push(2557);
    ref.push(2557);

//len_list: 16
//==============================


//==============================
    submit.push(3370);
    ref.push(3370);

//len_list: 17
//==============================


//==============================
    submit.push(5630);
    ref.push(5630);

//len_list: 18
//==============================


//==============================
    submit.push(5397);
    ref.push(5397);

//len_list: 19
//==============================


//==============================
    submit.push(5506);
    ref.push(5506);

//len_list: 20
//==============================


//==============================
    submit.push(1213);
    ref.push(1213);

//len_list: 21
//==============================


//==============================
    submit.push(6855);
    ref.push(6855);

//len_list: 22
//==============================


//==============================
    submit.push(8825);
    ref.push(8825);

//len_list: 23
//==============================


//==============================
    submit.push(1130);
    ref.push(1130);

//len_list: 24
//==============================


//==============================
    submit.push(7401);
    ref.push(7401);

//len_list: 25
//==============================


//==============================
    submit.push(4132);
    ref.push(4132);

//len_list: 26
//==============================


//==============================
    submit.push(2805);
    ref.push(2805);

//len_list: 27
//==============================


//==============================
    submit.push(2313);
    ref.push(2313);

//len_list: 28
//==============================


//==============================
    submit.push(7608);
    ref.push(7608);

//len_list: 29
//==============================


//==============================
    submit.push(7105);
    ref.push(7105);

//len_list: 30
//==============================


//==============================
    submit.push(1010);
    ref.push(1010);

//len_list: 31
//==============================


//==============================
    submit.push(6271);
    ref.push(6271);

//len_list: 32
//==============================


//==============================
    submit.push(2913);
    ref.push(2913);

//len_list: 33
//==============================


//==============================
    submit.push(4082);
    ref.push(4082);

//len_list: 34
//==============================


//==============================
    submit.push(2584);
    ref.push(2584);

//len_list: 35
//==============================


//==============================
    submit.push(4435);
    ref.push(4435);

//len_list: 36
//==============================


//==============================
    submit.push(9350);
    ref.push(9350);

//len_list: 37
//==============================


//==============================
    submit.push(4397);
    ref.push(4397);

//len_list: 38
//==============================


//==============================
    submit.push(4190);
    ref.push(4190);

//len_list: 39
//==============================


//==============================
    submit.push(1445);
    ref.push(1445);

//len_list: 40
//==============================


//==============================
    submit.push(6554);
    ref.push(6554);

//len_list: 41
//==============================


//==============================
    submit.push(758);
    ref.push(758);

//len_list: 42
//==============================


//==============================
    submit.push(6339);
    ref.push(6339);

//len_list: 43
//==============================


//==============================
    submit.push(561);
    ref.push(561);

//len_list: 44
//==============================


//==============================
    submit.push(898);
    ref.push(898);

//len_list: 45
//==============================


//==============================
    submit.push(3642);
    ref.push(3642);

//len_list: 46
//==============================


//==============================
    submit.push(8502);
    ref.push(8502);

//len_list: 47
//==============================


//==============================
    submit.push(5129);
    ref.push(5129);

//len_list: 48
//==============================


//==============================
    submit.push(4167);
    ref.push(4167);

//len_list: 49
//==============================


//==============================
    submit.push(6867);
    ref.push(6867);

//len_list: 50
//==============================


//==============================
    submit.push(5960);
    ref.push(5960);

//len_list: 51
//==============================


//==============================
    submit.push(2657);
    ref.push(2657);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(7510);
    ref.push(7510);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(625);
    ref.push(625);

//len_list: 52
//==============================


//==============================
    submit.push(8372);
    ref.push(8372);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(598);
    ref.push(598);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(3451);
    ref.push(3451);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(5874);
    ref.push(5874);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 37
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
    submit.push(8237);
    ref.push(8237);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(3735);
    ref.push(3735);

//len_list: 52
//==============================


//==============================
    submit.push(2744);
    ref.push(2744);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(5591);
    ref.push(5591);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 50
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
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(7528);
    ref.push(7528);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(6883);
    ref.push(6883);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(3342);
    ref.push(3342);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(8079);
    ref.push(8079);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(2925);
    ref.push(2925);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(2624);
    ref.push(2624);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(1756);
    ref.push(1756);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(8740);
    ref.push(8740);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(3353);
    ref.push(3353);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(4209);
    ref.push(4209);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(9954);
    ref.push(9954);

//len_list: 54
//==============================


//==============================
    submit.push(5139);
    ref.push(5139);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(4640);
    ref.push(4640);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(189);
    ref.push(189);

//len_list: 54
//==============================


//==============================
    submit.push(9396);
    ref.push(9396);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(8017);
    ref.push(8017);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(9979);
    ref.push(9979);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(996);
    ref.push(996);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(4386);
    ref.push(4386);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(7231);
    ref.push(7231);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(5434);
    ref.push(5434);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(8688);
    ref.push(8688);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(8342);
    ref.push(8342);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(8816);
    ref.push(8816);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.push(4566);
    ref.push(4566);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(3562);
    ref.push(3562);

//len_list: 56
//==============================


//==============================
    submit.push(5925);
    ref.push(5925);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(6300);
    ref.push(6300);

//len_list: 58
//==============================


//==============================
    submit.push(6740);
    ref.push(6740);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(2265);
    ref.push(2265);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(9657);
    ref.push(9657);

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(6401);
    ref.push(6401);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(8182);
    ref.push(8182);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(1066);
    ref.push(1066);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(8925);
    ref.push(8925);

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(1076);
    ref.push(1076);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.push(3187);
    ref.push(3187);

//len_list: 57
//==============================


//==============================
    submit.push(6774);
    ref.push(6774);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(683);
    ref.push(683);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(4452);
    ref.push(4452);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(1390);
    ref.push(1390);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(28);
    ref.push(28);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(24);
    ref.push(24);

//len_list: 63
//==============================


//==============================
    submit.push(174);
    ref.push(174);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(8131);
    ref.push(8131);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(3745);
    ref.push(3745);

//len_list: 65
//==============================


//==============================
    submit.push(9283);
    ref.push(9283);

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.push(285);
    ref.push(285);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(9192);
    ref.push(9192);

//len_list: 67
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(4800);
    ref.push(4800);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.push(5328);
    ref.push(5328);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(8608);
    ref.push(8608);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(5349);
    ref.push(5349);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(48);
    ref.push(48);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(530);
    ref.push(530);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(5182);
    ref.push(5182);

//len_list: 64
//==============================


//==============================
    submit.push(3832);
    ref.push(3832);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(6430);
    ref.push(6430);

//len_list: 65
//==============================


//==============================
    submit.push(2480);
    ref.push(2480);

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.push(9633);
    ref.push(9633);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(860);
    ref.push(860);

//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(3965);
    ref.push(3965);

//len_list: 63
//==============================


//==============================
    submit.push(7923);
    ref.push(7923);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.push(4703);
    ref.push(4703);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(767);
    ref.push(767);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.push(1522);
    ref.push(1522);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(6922);
    ref.push(6922);

//len_list: 65
//==============================


//==============================
    submit.push(5299);
    ref.push(5299);

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.push(9941);
    ref.push(9941);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(4622);
    ref.push(4622);

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    submit.push(3573);
    ref.push(3573);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(4585);
    ref.push(4585);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.push(1394);
    ref.push(1394);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9742);
    ref.push(9742);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(1933);
    ref.push(1933);

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(6052);
    ref.push(6052);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(9838);
    ref.push(9838);

//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    submit.push(7619);
    ref.push(7619);

//len_list: 65
//==============================


//==============================
    submit.push(2929);
    ref.push(2929);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(4477);
    ref.push(4477);

//len_list: 67
//==============================


//==============================
    submit.push(5101);
    ref.push(5101);

//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9423);
    ref.push(9423);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.push(4917);
    ref.push(4917);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.push(3394);
    ref.push(3394);

//len_list: 66
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.push(36);
    ref.push(36);

//len_list: 67
//==============================


//==============================
    submit.push(5466);
    ref.push(5466);

//len_list: 68
//==============================


//==============================
    submit.push(8064);
    ref.push(8064);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 67
//==============================


//==============================
    submit.push(77);
    ref.push(77);

//len_list: 68
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.push(1690);
    ref.push(1690);

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.push(3641);
    ref.push(3641);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 68
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 67
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 66
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 66
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    submit.push(9924);
    ref.push(9924);

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(619);
    ref.push(619);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(745);
    ref.push(745);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(3542);
    ref.push(3542);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(7475);
    ref.push(7475);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(476);
    ref.push(476);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.push(4276);
    ref.push(4276);

//len_list: 60
//==============================


//==============================
    submit.push(649);
    ref.push(649);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(6704);
    ref.push(6704);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(3656);
    ref.push(3656);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(7371);
    ref.push(7371);

//len_list: 59
//==============================


//==============================
    submit.push(3449);
    ref.push(3449);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(3023);
    ref.push(3023);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(4972);
    ref.push(4972);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(1843);
    ref.push(1843);

//len_list: 61
//==============================


//==============================
    submit.push(824);
    ref.push(824);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(9669);
    ref.push(9669);

//len_list: 61
//==============================


//==============================
    submit.push(9935);
    ref.push(9935);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(2820);
    ref.push(2820);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(807);
    ref.push(807);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(5605);
    ref.push(5605);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(832);
    ref.push(832);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(98);
    ref.push(98);

//len_list: 61
//==============================


//==============================
    submit.push(4613);
    ref.push(4613);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(9515);
    ref.push(9515);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.push(4916);
    ref.push(4916);

//len_list: 55
//==============================


//==============================
    submit.push(4861);
    ref.push(4861);

//len_list: 56
//==============================


//==============================
    submit.push(2595);
    ref.push(2595);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(2804);
    ref.push(2804);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(6321);
    ref.push(6321);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(4765);
    ref.push(4765);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(2541);
    ref.push(2541);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(5129);
    ref.push(5129);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(1130);
    ref.push(1130);

//len_list: 54
//==============================


//==============================
    submit.push(326);
    ref.push(326);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(1939);
    ref.push(1939);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(1829);
    ref.push(1829);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(3527);
    ref.push(3527);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(9682);
    ref.push(9682);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(6011);
    ref.push(6011);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(3090);
    ref.push(3090);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(5050);
    ref.push(5050);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(9425);
    ref.push(9425);

//len_list: 58
//==============================


//==============================
    submit.push(6617);
    ref.push(6617);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(1024);
    ref.push(1024);

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(2060);
    ref.push(2060);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(1705);
    ref.push(1705);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(6892);
    ref.push(6892);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9621);
    ref.push(9621);

//len_list: 52
//==============================


//==============================
    submit.push(5485);
    ref.push(5485);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(4667);
    ref.push(4667);

//len_list: 54
//==============================


//==============================
    submit.push(87);
    ref.push(87);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(9940);
    ref.push(9940);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(5304);
    ref.push(5304);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(8468);
    ref.push(8468);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(2612);
    ref.push(2612);

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(4568);
    ref.push(4568);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(2186);
    ref.push(2186);

//len_list: 56
//==============================


//==============================
    submit.push(3539);
    ref.push(3539);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(1812);
    ref.push(1812);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(8449);
    ref.push(8449);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(1419);
    ref.push(1419);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(3005);
    ref.push(3005);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(6862);
    ref.push(6862);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(972);
    ref.push(972);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(9900);
    ref.push(9900);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(1507);
    ref.push(1507);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(9137);
    ref.push(9137);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(7951);
    ref.push(7951);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(2989);
    ref.push(2989);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(7221);
    ref.push(7221);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
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
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(8372);
    ref.push(8372);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(7596);
    ref.push(7596);

//len_list: 52
//==============================


//==============================
    submit.push(3432);
    ref.push(3432);

//len_list: 53
//==============================


//==============================
    submit.push(5927);
    ref.push(5927);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(1352);
    ref.push(1352);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(8033);
    ref.push(8033);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(6176);
    ref.push(6176);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(7688);
    ref.push(7688);

//len_list: 51
//==============================


//==============================
    submit.push(4370);
    ref.push(4370);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
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
    submit.push(6896);
    ref.push(6896);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(4624);
    ref.push(4624);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(1062);
    ref.push(1062);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 554
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
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(4095);
    ref.push(4095);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(2044);
    ref.push(2044);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(384);
    ref.push(384);

//len_list: 52
//==============================


//==============================
    submit.push(3389);
    ref.push(3389);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(9825);
    ref.push(9825);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.push(7497);
    ref.push(7497);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(1698);
    ref.push(1698);

//len_list: 52
//==============================


//==============================
    submit.push(8889);
    ref.push(8889);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(3345);
    ref.push(3345);

//len_list: 54
//==============================


//==============================
    submit.push(3329);
    ref.push(3329);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(2349);
    ref.push(2349);

//len_list: 56
//==============================


//==============================
    submit.push(2400);
    ref.push(2400);

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(9900);
    ref.push(9900);

//len_list: 56
//==============================


//==============================
    submit.push(3105);
    ref.push(3105);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(9707);
    ref.push(9707);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(3166);
    ref.push(3166);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
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
    submit.push(5020);
    ref.push(5020);

//len_list: 51
//==============================


//==============================
    submit.push(4345);
    ref.push(4345);

//len_list: 52
//==============================


//==============================
    submit.push(8966);
    ref.push(8966);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(1672);
    ref.push(1672);

//len_list: 54
//==============================


//==============================
    submit.push(2747);
    ref.push(2747);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(867);
    ref.push(867);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(5316);
    ref.push(5316);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(7089);
    ref.push(7089);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(696);
    ref.push(696);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(4536);
    ref.push(4536);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(2114);
    ref.push(2114);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(2604);
    ref.push(2604);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(7229);
    ref.push(7229);

//len_list: 53
//==============================


//==============================
    submit.push(9125);
    ref.push(9125);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(7981);
    ref.push(7981);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(8495);
    ref.push(8495);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(475);
    ref.push(475);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(1097);
    ref.push(1097);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(4097);
    ref.push(4097);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(1414);
    ref.push(1414);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(2253);
    ref.push(2253);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(1277);
    ref.push(1277);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9131);
    ref.push(9131);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(4719);
    ref.push(4719);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(8441);
    ref.push(8441);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.push(1449);
    ref.push(1449);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(4953);
    ref.push(4953);

//len_list: 54
//==============================


//==============================
    submit.push(639);
    ref.push(639);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(2776);
    ref.push(2776);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(844);
    ref.push(844);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 702
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
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(185);
    ref.push(185);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(4131);
    ref.push(4131);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(4386);
    ref.push(4386);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(9274);
    ref.push(9274);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 723
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
    submit.push(248);
    ref.push(248);

//len_list: 51
//==============================


//==============================
    submit.push(9995);
    ref.push(9995);

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
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(1098);
    ref.push(1098);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(8641);
    ref.push(8641);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(521);
    ref.push(521);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(7907);
    ref.push(7907);

//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(507);
    ref.push(507);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(3189);
    ref.push(3189);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(3586);
    ref.push(3586);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(497);
    ref.push(497);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(3014);
    ref.push(3014);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(5009);
    ref.push(5009);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(442);
    ref.push(442);

//len_list: 52
//==============================


//==============================
    submit.push(8643);
    ref.push(8643);

//len_list: 53
//==============================


//==============================
    submit.push(7785);
    ref.push(7785);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(5507);
    ref.push(5507);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(79);
    ref.push(79);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
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
    submit.push(5124);
    ref.push(5124);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(9826);
    ref.push(9826);

//len_list: 51
//==============================


//==============================
    submit.push(8043);
    ref.push(8043);

//len_list: 52
//==============================


//==============================
    submit.push(4886);
    ref.push(4886);

//len_list: 53
//==============================


//==============================
    submit.push(888);
    ref.push(888);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(7098);
    ref.push(7098);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(448);
    ref.push(448);

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(7467);
    ref.push(7467);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(5714);
    ref.push(5714);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(9059);
    ref.push(9059);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(2695);
    ref.push(2695);

//len_list: 52
//==============================


//==============================
    submit.push(8223);
    ref.push(8223);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 798
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
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9609);
    ref.push(9609);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 801
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
    submit.push(5195);
    ref.push(5195);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(5563);
    ref.push(5563);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(1399);
    ref.push(1399);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(6461);
    ref.push(6461);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 816
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
    submit.push(5187);
    ref.push(5187);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(9941);
    ref.push(9941);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(8049);
    ref.push(8049);

//len_list: 52
//==============================


//==============================
    submit.push(7651);
    ref.push(7651);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(6010);
    ref.push(6010);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(4049);
    ref.push(4049);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(24);
    ref.push(24);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(1087);
    ref.push(1087);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(3461);
    ref.push(3461);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(4695);
    ref.push(4695);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(6033);
    ref.push(6033);

//len_list: 51
//==============================


//==============================
    submit.push(4730);
    ref.push(4730);

//len_list: 52
//==============================


//==============================
    submit.push(8040);
    ref.push(8040);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(6113);
    ref.push(6113);

//len_list: 53
//==============================


//==============================
    submit.push(9387);
    ref.push(9387);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    submit.push(2263);
    ref.push(2263);

//len_list: 54
//==============================


//==============================
    submit.push(3193);
    ref.push(3193);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(8385);
    ref.push(8385);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(4230);
    ref.push(4230);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(3794);
    ref.push(3794);

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(1123);
    ref.push(1123);

//len_list: 58
//==============================


//==============================
    submit.push(6182);
    ref.push(6182);

//len_list: 59
//==============================


//==============================
    submit.push(4200);
    ref.push(4200);

//len_list: 60
//==============================


//==============================
    submit.push(2721);
    ref.push(2721);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(9661);
    ref.push(9661);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(4023);
    ref.push(4023);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(5348);
    ref.push(5348);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(6176);
    ref.push(6176);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(9531);
    ref.push(9531);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(1196);
    ref.push(1196);

//len_list: 61
//==============================


//==============================
    submit.push(2269);
    ref.push(2269);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(7920);
    ref.push(7920);

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(4806);
    ref.push(4806);

//len_list: 61
//==============================


//==============================
    submit.push(6080);
    ref.push(6080);

//len_list: 62
//==============================


//==============================
    submit.push(7988);
    ref.push(7988);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(2809);
    ref.push(2809);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(9315);
    ref.push(9315);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(5849);
    ref.push(5849);

//len_list: 64
//==============================


//==============================
    submit.push(37);
    ref.push(37);

//len_list: 65
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 65
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(204);
    ref.push(204);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.push(8684);
    ref.push(8684);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(1638);
    ref.push(1638);

//len_list: 58
//==============================


//==============================
    submit.push(7427);
    ref.push(7427);

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(2029);
    ref.push(2029);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(815);
    ref.push(815);

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(2346);
    ref.push(2346);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(9714);
    ref.push(9714);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9460);
    ref.push(9460);

//len_list: 52
//==============================


//==============================
    submit.push(7793);
    ref.push(7793);

//len_list: 53
//==============================


//==============================
    submit.push(2256);
    ref.push(2256);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    submit.push(5182);
    ref.push(5182);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(1907);
    ref.push(1907);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(849);
    ref.push(849);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(8093);
    ref.push(8093);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(6695);
    ref.push(6695);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 971
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
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(2817);
    ref.push(2817);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(3883);
    ref.push(3883);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(9312);
    ref.push(9312);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(4433);
    ref.push(4433);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(6719);
    ref.push(6719);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(4766);
    ref.push(4766);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.push(4274);
    ref.push(4274);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(8965);
    ref.push(8965);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.push(7464);
    ref.push(7464);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(2857);
    ref.push(2857);

//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(921);
    ref.push(921);

//len_list: 51
//==============================


//==============================
    submit.push(6889);
    ref.push(6889);

//len_list: 52
//==============================


//==============================
    submit.push(8310);
    ref.push(8310);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.push(8703);
    ref.push(8703);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1013
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1014
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1015
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1016
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1017
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(8606);
    ref.push(8606);

//len_list: 54
//==============================


//==============================
    submit.push(3803);
    ref.push(3803);

//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1018
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1019
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1020
    REQUIRE( ret_ref == ret_submit);
//len_list: 55
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1021
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1022
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1023
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    submit.push(1854);
    ref.push(1854);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1024
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1025
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1026
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1027
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1028
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1029
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1030
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1031
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1032
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(860);
    ref.push(860);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1033
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1034
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1035
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1036
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1037
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1038
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1039
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(4322);
    ref.push(4322);

//len_list: 53
//==============================


//==============================
    submit.push(4342);
    ref.push(4342);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1040
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1041
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(2107);
    ref.push(2107);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1042
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1043
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 50
//==============================


//==============================
    submit.push(9034);
    ref.push(9034);

//len_list: 51
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1044
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(9504);
    ref.push(9504);

//len_list: 52
//==============================


//==============================
    submit.push(3377);
    ref.push(3377);

//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1045
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1046
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1047
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1048
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1049
    REQUIRE( ret_ref == ret_submit);
//len_list: 51
//==============================


//==============================
    submit.push(6606);
    ref.push(6606);

//len_list: 52
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1050
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(5784);
    ref.push(5784);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1051
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1052
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1053
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1054
    REQUIRE( ret_ref == ret_submit);
//len_list: 52
//==============================


//==============================
    submit.push(7711);
    ref.push(7711);

//len_list: 53
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1055
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(1422);
    ref.push(1422);

//len_list: 54
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 53
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1056
    REQUIRE( ret_ref == ret_submit);
//len_list: 53
//==============================


//==============================
    submit.push(7237);
    ref.push(7237);

//len_list: 54
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1057
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1058
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1059
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1060
    REQUIRE( ret_ref == ret_submit);
//len_list: 54
//==============================


//==============================
    submit.push(9869);
    ref.push(9869);

//len_list: 55
//==============================


//==============================
    submit.push(9222);
    ref.push(9222);

//len_list: 56
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1061
    REQUIRE( ret_ref == ret_submit);
//len_list: 56
//==============================


//==============================
    submit.push(7280);
    ref.push(7280);

//len_list: 57
//==============================


//==============================
    submit.push(7747);
    ref.push(7747);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1062
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1063
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1064
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1065
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1066
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1067
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1068
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1069
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1070
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(3461);
    ref.push(3461);

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    submit.push(8901);
    ref.push(8901);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1071
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1072
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1073
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1074
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1075
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1076
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1077
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1078
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1079
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(6451);
    ref.push(6451);

//len_list: 58
//==============================


//==============================
    submit.push(1322);
    ref.push(1322);

//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1080
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1081
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1082
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1083
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1084
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.push(9715);
    ref.push(9715);

//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1085
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(9911);
    ref.push(9911);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1086
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.push(4326);
    ref.push(4326);

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1087
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(7784);
    ref.push(7784);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1088
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1089
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1090
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1091
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1092
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1093
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(4654);
    ref.push(4654);

//len_list: 61
//==============================


//==============================
    submit.push(5490);
    ref.push(5490);

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1094
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1095
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1096
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1097
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1098
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1099
    REQUIRE( ret_ref == ret_submit);
//len_list: 60
//==============================


//==============================
    submit.push(595);
    ref.push(595);

//len_list: 61
//==============================


//==============================
    submit.push(2739);
    ref.push(2739);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1100
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1101
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1102
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1103
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1104
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1105
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1106
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1107
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1108
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1109
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1110
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.push(5829);
    ref.push(5829);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1111
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1112
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(7151);
    ref.push(7151);

//len_list: 63
//==============================


//==============================
    submit.push(6136);
    ref.push(6136);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1113
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1114
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1115
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1116
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1117
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1118
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1119
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1120
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1121
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1122
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1123
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1124
    REQUIRE( ret_ref == ret_submit);
//len_list: 61
//==============================


//==============================
    submit.push(3083);
    ref.push(3083);

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1125
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(148);
    ref.push(148);

//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1126
    REQUIRE( ret_ref == ret_submit);
//len_list: 62
//==============================


//==============================
    submit.push(3998);
    ref.push(3998);

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1127
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.push(5868);
    ref.push(5868);

//len_list: 63
//==============================


//==============================
    submit.push(7005);
    ref.push(7005);

//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1128
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1129
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1130
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1131
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1132
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1133
    REQUIRE( ret_ref == ret_submit);
//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1134
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1135
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.push(4893);
    ref.push(4893);

//len_list: 64
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 63
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1136
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1137
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1138
    REQUIRE( ret_ref == ret_submit);
//len_list: 63
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 62
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 61
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 60
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 59
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1139
    REQUIRE( ret_ref == ret_submit);
//len_list: 59
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 58
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 57
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1140
    REQUIRE( ret_ref == ret_submit);
//len_list: 57
//==============================


//==============================
    submit.push(8103);
    ref.push(8103);

//len_list: 58
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1141
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 1142
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1143
    REQUIRE( ret_ref == ret_submit);
//len_list: 58
//==============================


//==============================
    submit.push(7345);
    ref.push(7345);

//len_list: 59
//==============================


}
