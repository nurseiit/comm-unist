
    #include "catch.hpp"
    #include "MyStackImpl.h"
    #include <stack>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test stack with (capacity, len_cmd) = (92,444)") {

    stack<int> ref;
    MyStackImpl<int> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(1033);
    ref.push(1033);

//len_list: 1
//==============================


//==============================
    submit.push(9633);
    ref.push(9633);

//len_list: 2
//==============================


//==============================
    submit.push(4532);
    ref.push(4532);

//len_list: 3
//==============================


//==============================
    submit.push(4397);
    ref.push(4397);

//len_list: 4
//==============================


//==============================
    submit.push(1919);
    ref.push(1919);

//len_list: 5
//==============================


//==============================
    submit.push(5677);
    ref.push(5677);

//len_list: 6
//==============================


//==============================
    submit.push(4301);
    ref.push(4301);

//len_list: 7
//==============================


//==============================
    submit.push(3653);
    ref.push(3653);

//len_list: 8
//==============================


//==============================
    submit.push(5858);
    ref.push(5858);

//len_list: 9
//==============================


//==============================
    submit.push(3079);
    ref.push(3079);

//len_list: 10
//==============================


//==============================
    submit.push(6888);
    ref.push(6888);

//len_list: 11
//==============================


//==============================
    submit.push(2036);
    ref.push(2036);

//len_list: 12
//==============================


//==============================
    submit.push(5168);
    ref.push(5168);

//len_list: 13
//==============================


//==============================
    submit.push(2534);
    ref.push(2534);

//len_list: 14
//==============================


//==============================
    submit.push(505);
    ref.push(505);

//len_list: 15
//==============================


//==============================
    submit.push(5969);
    ref.push(5969);

//len_list: 16
//==============================


//==============================
    submit.push(5729);
    ref.push(5729);

//len_list: 17
//==============================


//==============================
    submit.push(3810);
    ref.push(3810);

//len_list: 18
//==============================


//==============================
    submit.push(6637);
    ref.push(6637);

//len_list: 19
//==============================


//==============================
    submit.push(4207);
    ref.push(4207);

//len_list: 20
//==============================


//==============================
    submit.push(2092);
    ref.push(2092);

//len_list: 21
//==============================


//==============================
    submit.push(9969);
    ref.push(9969);

//len_list: 22
//==============================


//==============================
    submit.push(5586);
    ref.push(5586);

//len_list: 23
//==============================


//==============================
    submit.push(2051);
    ref.push(2051);

//len_list: 24
//==============================


//==============================
    submit.push(1539);
    ref.push(1539);

//len_list: 25
//==============================


//==============================
    submit.push(4308);
    ref.push(4308);

//len_list: 26
//==============================


//==============================
    submit.push(2525);
    ref.push(2525);

//len_list: 27
//==============================


//==============================
    submit.push(4435);
    ref.push(4435);

//len_list: 28
//==============================


//==============================
    submit.push(7546);
    ref.push(7546);

//len_list: 29
//==============================


//==============================
    submit.push(4771);
    ref.push(4771);

//len_list: 30
//==============================


//==============================
    submit.push(6337);
    ref.push(6337);

//len_list: 31
//==============================


//==============================
    submit.push(3316);
    ref.push(3316);

//len_list: 32
//==============================


//==============================
    submit.push(7728);
    ref.push(7728);

//len_list: 33
//==============================


//==============================
    submit.push(2876);
    ref.push(2876);

//len_list: 34
//==============================


//==============================
    submit.push(7199);
    ref.push(7199);

//len_list: 35
//==============================


//==============================
    submit.push(5000);
    ref.push(5000);

//len_list: 36
//==============================


//==============================
    submit.push(2114);
    ref.push(2114);

//len_list: 37
//==============================


//==============================
    submit.push(2822);
    ref.push(2822);

//len_list: 38
//==============================


//==============================
    submit.push(1233);
    ref.push(1233);

//len_list: 39
//==============================


//==============================
    submit.push(9346);
    ref.push(9346);

//len_list: 40
//==============================


//==============================
    submit.push(8400);
    ref.push(8400);

//len_list: 41
//==============================


//==============================
    submit.push(4010);
    ref.push(4010);

//len_list: 42
//==============================


//==============================
    submit.push(9195);
    ref.push(9195);

//len_list: 43
//==============================


//==============================
    submit.push(8519);
    ref.push(8519);

//len_list: 44
//==============================


//==============================
    submit.push(2732);
    ref.push(2732);

//len_list: 45
//==============================


//==============================
    submit.push(318);
    ref.push(318);

//len_list: 46
//==============================


//==============================
    submit.push(7556);
    ref.push(7556);

//len_list: 47
//==============================


//==============================
    submit.push(1826);
    ref.push(1826);

//len_list: 48
//==============================


//==============================
    submit.push(1125);
    ref.push(1125);

//len_list: 49
//==============================


//==============================
    submit.push(7877);
    ref.push(7877);

//len_list: 50
//==============================


//==============================
    submit.push(5467);
    ref.push(5467);

//len_list: 51
//==============================


//==============================
    submit.push(760);
    ref.push(760);

//len_list: 52
//==============================


//==============================
    submit.push(4648);
    ref.push(4648);

//len_list: 53
//==============================


//==============================
    submit.push(4509);
    ref.push(4509);

//len_list: 54
//==============================


//==============================
    submit.push(5622);
    ref.push(5622);

//len_list: 55
//==============================


//==============================
    submit.push(4997);
    ref.push(4997);

//len_list: 56
//==============================


//==============================
    submit.push(7490);
    ref.push(7490);

//len_list: 57
//==============================


//==============================
    submit.push(2067);
    ref.push(2067);

//len_list: 58
//==============================


//==============================
    submit.push(1852);
    ref.push(1852);

//len_list: 59
//==============================


//==============================
    submit.push(9267);
    ref.push(9267);

//len_list: 60
//==============================


//==============================
    submit.push(5853);
    ref.push(5853);

//len_list: 61
//==============================


//==============================
    submit.push(9819);
    ref.push(9819);

//len_list: 62
//==============================


//==============================
    submit.push(6091);
    ref.push(6091);

//len_list: 63
//==============================


//==============================
    submit.push(7922);
    ref.push(7922);

//len_list: 64
//==============================


//==============================
    submit.push(6872);
    ref.push(6872);

//len_list: 65
//==============================


//==============================
    submit.push(6670);
    ref.push(6670);

//len_list: 66
//==============================


//==============================
    submit.push(4981);
    ref.push(4981);

//len_list: 67
//==============================


//==============================
    submit.push(1906);
    ref.push(1906);

//len_list: 68
//==============================


//==============================
    submit.push(3499);
    ref.push(3499);

//len_list: 69
//==============================


//==============================
    submit.push(1987);
    ref.push(1987);

//len_list: 70
//==============================


//==============================
    submit.push(9145);
    ref.push(9145);

//len_list: 71
//==============================


//==============================
    submit.push(3446);
    ref.push(3446);

//len_list: 72
//==============================


//==============================
    submit.push(6396);
    ref.push(6396);

//len_list: 73
//==============================


//==============================
    submit.push(4052);
    ref.push(4052);

//len_list: 74
//==============================


//==============================
    submit.push(8896);
    ref.push(8896);

//len_list: 75
//==============================


//==============================
    submit.push(2923);
    ref.push(2923);

//len_list: 76
//==============================


//==============================
    submit.push(4028);
    ref.push(4028);

//len_list: 77
//==============================


//==============================
    submit.push(3101);
    ref.push(3101);

//len_list: 78
//==============================


//==============================
    submit.push(8148);
    ref.push(8148);

//len_list: 79
//==============================


//==============================
    submit.push(8811);
    ref.push(8811);

//len_list: 80
//==============================


//==============================
    submit.push(5295);
    ref.push(5295);

//len_list: 81
//==============================


//==============================
    submit.push(1612);
    ref.push(1612);

//len_list: 82
//==============================


//==============================
    submit.push(410);
    ref.push(410);

//len_list: 83
//==============================


//==============================
    submit.push(8001);
    ref.push(8001);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(9216);
    ref.push(9216);

//len_list: 84
//==============================


//==============================
    submit.push(9036);
    ref.push(9036);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(7421);
    ref.push(7421);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(4990);
    ref.push(4990);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(3710);
    ref.push(3710);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9023);
    ref.push(9023);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(8160);
    ref.push(8160);

//len_list: 86
//==============================


//==============================
    submit.push(5917);
    ref.push(5917);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(9445);
    ref.push(9445);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6842);
    ref.push(6842);

//len_list: 85
//==============================


//==============================
    submit.push(1254);
    ref.push(1254);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(233);
    ref.push(233);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(1606);
    ref.push(1606);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(676);
    ref.push(676);

//len_list: 84
//==============================


//==============================
    submit.push(2476);
    ref.push(2476);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(4557);
    ref.push(4557);

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(8414);
    ref.push(8414);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(9206);
    ref.push(9206);

//len_list: 85
//==============================


//==============================
    submit.push(8822);
    ref.push(8822);

//len_list: 86
//==============================


//==============================
    submit.push(8340);
    ref.push(8340);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(28);
    ref.push(28);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(4268);
    ref.push(4268);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9589);
    ref.push(9589);

//len_list: 87
//==============================


//==============================
    submit.push(419);
    ref.push(419);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(7614);
    ref.push(7614);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(1409);
    ref.push(1409);

//len_list: 84
//==============================


//==============================
    submit.push(5588);
    ref.push(5588);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9606);
    ref.push(9606);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(444);
    ref.push(444);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9674);
    ref.push(9674);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(4158);
    ref.push(4158);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(4430);
    ref.push(4430);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(6378);
    ref.push(6378);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(3543);
    ref.push(3543);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(284);
    ref.push(284);

//len_list: 85
//==============================


//==============================
    submit.push(5625);
    ref.push(5625);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(8275);
    ref.push(8275);

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(4857);
    ref.push(4857);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6808);
    ref.push(6808);

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(9479);
    ref.push(9479);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(2918);
    ref.push(2918);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(7364);
    ref.push(7364);

//len_list: 85
//==============================


//==============================
    submit.push(4309);
    ref.push(4309);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(3081);
    ref.push(3081);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9634);
    ref.push(9634);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(844);
    ref.push(844);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(1257);
    ref.push(1257);

//len_list: 87
//==============================


//==============================
    submit.push(1689);
    ref.push(1689);

//len_list: 88
//==============================


//==============================
    submit.push(8190);
    ref.push(8190);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(944);
    ref.push(944);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(724);
    ref.push(724);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(4990);
    ref.push(4990);

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(8681);
    ref.push(8681);

//len_list: 90
//==============================


//==============================
    submit.push(5569);
    ref.push(5569);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.push(7966);
    ref.push(7966);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(1314);
    ref.push(1314);

//len_list: 92
//==============================


//==============================
    submit.push(4657);
    ref.push(4657);

//len_list: 93
//==============================


//==============================
    submit.push(7905);
    ref.push(7905);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(3927);
    ref.push(3927);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(1780);
    ref.push(1780);

//len_list: 96
//==============================


//==============================
    submit.push(8412);
    ref.push(8412);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(8188);
    ref.push(8188);

//len_list: 98
//==============================


//==============================
    submit.push(4676);
    ref.push(4676);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(4037);
    ref.push(4037);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(9048);
    ref.push(9048);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(1553);
    ref.push(1553);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2785);
    ref.push(2785);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(5118);
    ref.push(5118);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(7941);
    ref.push(7941);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(2877);
    ref.push(2877);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(4473);
    ref.push(4473);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(3400);
    ref.push(3400);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(3963);
    ref.push(3963);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(4915);
    ref.push(4915);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9372);
    ref.push(9372);

//len_list: 95
//==============================


//==============================
    submit.push(7939);
    ref.push(7939);

//len_list: 96
//==============================


//==============================
    submit.push(8933);
    ref.push(8933);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(3143);
    ref.push(3143);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(2678);
    ref.push(2678);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(5889);
    ref.push(5889);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1544);
    ref.push(1544);

//len_list: 97
//==============================


//==============================
    submit.push(3116);
    ref.push(3116);

//len_list: 98
//==============================


//==============================
    submit.push(2744);
    ref.push(2744);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(5966);
    ref.push(5966);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5146);
    ref.push(5146);

//len_list: 100
//==============================


//==============================
    submit.push(5502);
    ref.push(5502);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(7826);
    ref.push(7826);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5402);
    ref.push(5402);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(1901);
    ref.push(1901);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(1986);
    ref.push(1986);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(5797);
    ref.push(5797);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(5236);
    ref.push(5236);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(9350);
    ref.push(9350);

//len_list: 105
//==============================


//==============================
    submit.push(7232);
    ref.push(7232);

//len_list: 106
//==============================


//==============================
    submit.push(1782);
    ref.push(1782);

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.push(9467);
    ref.push(9467);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(5934);
    ref.push(5934);

//len_list: 106
//==============================


}
