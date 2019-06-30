
    #define CATCH_CONFIG_FAST_COMPILE
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (182,1272)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true,182> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(8192);
    ref.push(8192);

//len_list: 1
//==============================


//==============================
    submit.push(7940);
    ref.push(7940);

//len_list: 2
//==============================


//==============================
    submit.push(7093);
    ref.push(7093);

//len_list: 3
//==============================


//==============================
    submit.push(9904);
    ref.push(9904);

//len_list: 4
//==============================


//==============================
    submit.push(7656);
    ref.push(7656);

//len_list: 5
//==============================


//==============================
    submit.push(5874);
    ref.push(5874);

//len_list: 6
//==============================


//==============================
    submit.push(7667);
    ref.push(7667);

//len_list: 7
//==============================


//==============================
    submit.push(9546);
    ref.push(9546);

//len_list: 8
//==============================


//==============================
    submit.push(1036);
    ref.push(1036);

//len_list: 9
//==============================


//==============================
    submit.push(1489);
    ref.push(1489);

//len_list: 10
//==============================


//==============================
    submit.push(7310);
    ref.push(7310);

//len_list: 11
//==============================


//==============================
    submit.push(537);
    ref.push(537);

//len_list: 12
//==============================


//==============================
    submit.push(9753);
    ref.push(9753);

//len_list: 13
//==============================


//==============================
    submit.push(7459);
    ref.push(7459);

//len_list: 14
//==============================


//==============================
    submit.push(945);
    ref.push(945);

//len_list: 15
//==============================


//==============================
    submit.push(4104);
    ref.push(4104);

//len_list: 16
//==============================


//==============================
    submit.push(2351);
    ref.push(2351);

//len_list: 17
//==============================


//==============================
    submit.push(477);
    ref.push(477);

//len_list: 18
//==============================


//==============================
    submit.push(2441);
    ref.push(2441);

//len_list: 19
//==============================


//==============================
    submit.push(717);
    ref.push(717);

//len_list: 20
//==============================


//==============================
    submit.push(6917);
    ref.push(6917);

//len_list: 21
//==============================


//==============================
    submit.push(2358);
    ref.push(2358);

//len_list: 22
//==============================


//==============================
    submit.push(9820);
    ref.push(9820);

//len_list: 23
//==============================


//==============================
    submit.push(2854);
    ref.push(2854);

//len_list: 24
//==============================


//==============================
    submit.push(6553);
    ref.push(6553);

//len_list: 25
//==============================


//==============================
    submit.push(5318);
    ref.push(5318);

//len_list: 26
//==============================


//==============================
    submit.push(4963);
    ref.push(4963);

//len_list: 27
//==============================


//==============================
    submit.push(450);
    ref.push(450);

//len_list: 28
//==============================


//==============================
    submit.push(6801);
    ref.push(6801);

//len_list: 29
//==============================


//==============================
    submit.push(9730);
    ref.push(9730);

//len_list: 30
//==============================


//==============================
    submit.push(2710);
    ref.push(2710);

//len_list: 31
//==============================


//==============================
    submit.push(5002);
    ref.push(5002);

//len_list: 32
//==============================


//==============================
    submit.push(5562);
    ref.push(5562);

//len_list: 33
//==============================


//==============================
    submit.push(9717);
    ref.push(9717);

//len_list: 34
//==============================


//==============================
    submit.push(8875);
    ref.push(8875);

//len_list: 35
//==============================


//==============================
    submit.push(3300);
    ref.push(3300);

//len_list: 36
//==============================


//==============================
    submit.push(721);
    ref.push(721);

//len_list: 37
//==============================


//==============================
    submit.push(6283);
    ref.push(6283);

//len_list: 38
//==============================


//==============================
    submit.push(5998);
    ref.push(5998);

//len_list: 39
//==============================


//==============================
    submit.push(9583);
    ref.push(9583);

//len_list: 40
//==============================


//==============================
    submit.push(5564);
    ref.push(5564);

//len_list: 41
//==============================


//==============================
    submit.push(2082);
    ref.push(2082);

//len_list: 42
//==============================


//==============================
    submit.push(4848);
    ref.push(4848);

//len_list: 43
//==============================


//==============================
    submit.push(3498);
    ref.push(3498);

//len_list: 44
//==============================


//==============================
    submit.push(8592);
    ref.push(8592);

//len_list: 45
//==============================


//==============================
    submit.push(3131);
    ref.push(3131);

//len_list: 46
//==============================


//==============================
    submit.push(2593);
    ref.push(2593);

//len_list: 47
//==============================


//==============================
    submit.push(3275);
    ref.push(3275);

//len_list: 48
//==============================


//==============================
    submit.push(7662);
    ref.push(7662);

//len_list: 49
//==============================


//==============================
    submit.push(4478);
    ref.push(4478);

//len_list: 50
//==============================


//==============================
    submit.push(9380);
    ref.push(9380);

//len_list: 51
//==============================


//==============================
    submit.push(296);
    ref.push(296);

//len_list: 52
//==============================


//==============================
    submit.push(3734);
    ref.push(3734);

//len_list: 53
//==============================


//==============================
    submit.push(9457);
    ref.push(9457);

//len_list: 54
//==============================


//==============================
    submit.push(1378);
    ref.push(1378);

//len_list: 55
//==============================


//==============================
    submit.push(6476);
    ref.push(6476);

//len_list: 56
//==============================


//==============================
    submit.push(1135);
    ref.push(1135);

//len_list: 57
//==============================


//==============================
    submit.push(7359);
    ref.push(7359);

//len_list: 58
//==============================


//==============================
    submit.push(131);
    ref.push(131);

//len_list: 59
//==============================


//==============================
    submit.push(4566);
    ref.push(4566);

//len_list: 60
//==============================


//==============================
    submit.push(7310);
    ref.push(7310);

//len_list: 61
//==============================


//==============================
    submit.push(2267);
    ref.push(2267);

//len_list: 62
//==============================


//==============================
    submit.push(2001);
    ref.push(2001);

//len_list: 63
//==============================


//==============================
    submit.push(9187);
    ref.push(9187);

//len_list: 64
//==============================


//==============================
    submit.push(4407);
    ref.push(4407);

//len_list: 65
//==============================


//==============================
    submit.push(5882);
    ref.push(5882);

//len_list: 66
//==============================


//==============================
    submit.push(3136);
    ref.push(3136);

//len_list: 67
//==============================


//==============================
    submit.push(2068);
    ref.push(2068);

//len_list: 68
//==============================


//==============================
    submit.push(3808);
    ref.push(3808);

//len_list: 69
//==============================


//==============================
    submit.push(9880);
    ref.push(9880);

//len_list: 70
//==============================


//==============================
    submit.push(692);
    ref.push(692);

//len_list: 71
//==============================


//==============================
    submit.push(5490);
    ref.push(5490);

//len_list: 72
//==============================


//==============================
    submit.push(4659);
    ref.push(4659);

//len_list: 73
//==============================


//==============================
    submit.push(6067);
    ref.push(6067);

//len_list: 74
//==============================


//==============================
    submit.push(3377);
    ref.push(3377);

//len_list: 75
//==============================


//==============================
    submit.push(2238);
    ref.push(2238);

//len_list: 76
//==============================


//==============================
    submit.push(9840);
    ref.push(9840);

//len_list: 77
//==============================


//==============================
    submit.push(6308);
    ref.push(6308);

//len_list: 78
//==============================


//==============================
    submit.push(4160);
    ref.push(4160);

//len_list: 79
//==============================


//==============================
    submit.push(8441);
    ref.push(8441);

//len_list: 80
//==============================


//==============================
    submit.push(9746);
    ref.push(9746);

//len_list: 81
//==============================


//==============================
    submit.push(7422);
    ref.push(7422);

//len_list: 82
//==============================


//==============================
    submit.push(2711);
    ref.push(2711);

//len_list: 83
//==============================


//==============================
    submit.push(5777);
    ref.push(5777);

//len_list: 84
//==============================


//==============================
    submit.push(4212);
    ref.push(4212);

//len_list: 85
//==============================


//==============================
    submit.push(6596);
    ref.push(6596);

//len_list: 86
//==============================


//==============================
    submit.push(2539);
    ref.push(2539);

//len_list: 87
//==============================


//==============================
    submit.push(901);
    ref.push(901);

//len_list: 88
//==============================


//==============================
    submit.push(5363);
    ref.push(5363);

//len_list: 89
//==============================


//==============================
    submit.push(9492);
    ref.push(9492);

//len_list: 90
//==============================


//==============================
    submit.push(7495);
    ref.push(7495);

//len_list: 91
//==============================


//==============================
    submit.push(7759);
    ref.push(7759);

//len_list: 92
//==============================


//==============================
    submit.push(7903);
    ref.push(7903);

//len_list: 93
//==============================


//==============================
    submit.push(5860);
    ref.push(5860);

//len_list: 94
//==============================


//==============================
    submit.push(4207);
    ref.push(4207);

//len_list: 95
//==============================


//==============================
    submit.push(7311);
    ref.push(7311);

//len_list: 96
//==============================


//==============================
    submit.push(2301);
    ref.push(2301);

//len_list: 97
//==============================


//==============================
    submit.push(246);
    ref.push(246);

//len_list: 98
//==============================


//==============================
    submit.push(8459);
    ref.push(8459);

//len_list: 99
//==============================


//==============================
    submit.push(6094);
    ref.push(6094);

//len_list: 100
//==============================


//==============================
    submit.push(4674);
    ref.push(4674);

//len_list: 101
//==============================


//==============================
    submit.push(2091);
    ref.push(2091);

//len_list: 102
//==============================


//==============================
    submit.push(6634);
    ref.push(6634);

//len_list: 103
//==============================


//==============================
    submit.push(5534);
    ref.push(5534);

//len_list: 104
//==============================


//==============================
    submit.push(2597);
    ref.push(2597);

//len_list: 105
//==============================


//==============================
    submit.push(7702);
    ref.push(7702);

//len_list: 106
//==============================


//==============================
    submit.push(9501);
    ref.push(9501);

//len_list: 107
//==============================


//==============================
    submit.push(7091);
    ref.push(7091);

//len_list: 108
//==============================


//==============================
    submit.push(4937);
    ref.push(4937);

//len_list: 109
//==============================


//==============================
    submit.push(9442);
    ref.push(9442);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(3702);
    ref.push(3702);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(5599);
    ref.push(5599);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(8766);
    ref.push(8766);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(2365);
    ref.push(2365);

//len_list: 111
//==============================


//==============================
    submit.push(5971);
    ref.push(5971);

//len_list: 112
//==============================


//==============================
    submit.push(3786);
    ref.push(3786);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.push(2796);
    ref.push(2796);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(9089);
    ref.push(9089);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(7573);
    ref.push(7573);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(8085);
    ref.push(8085);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(807);
    ref.push(807);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.push(7116);
    ref.push(7116);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(7511);
    ref.push(7511);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(8516);
    ref.push(8516);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(770);
    ref.push(770);

//len_list: 111
//==============================


//==============================
    submit.push(1740);
    ref.push(1740);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(3668);
    ref.push(3668);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(2826);
    ref.push(2826);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(4315);
    ref.push(4315);

//len_list: 111
//==============================


//==============================
    submit.push(4275);
    ref.push(4275);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(3837);
    ref.push(3837);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(9358);
    ref.push(9358);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(9239);
    ref.push(9239);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(8979);
    ref.push(8979);

//len_list: 110
//==============================


//==============================
    submit.push(2137);
    ref.push(2137);

//len_list: 111
//==============================


//==============================
    submit.push(3855);
    ref.push(3855);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3777);
    ref.push(3777);

//len_list: 113
//==============================


//==============================
    submit.push(1753);
    ref.push(1753);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(6795);
    ref.push(6795);

//len_list: 110
//==============================


//==============================
    submit.push(7368);
    ref.push(7368);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(9470);
    ref.push(9470);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(6443);
    ref.push(6443);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(6560);
    ref.push(6560);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(8667);
    ref.push(8667);

//len_list: 113
//==============================


//==============================
    submit.push(4668);
    ref.push(4668);

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(5581);
    ref.push(5581);

//len_list: 114
//==============================


//==============================
    submit.push(200);
    ref.push(200);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(8640);
    ref.push(8640);

//len_list: 116
//==============================


//==============================
    submit.push(9739);
    ref.push(9739);

//len_list: 117
//==============================


//==============================
    submit.push(2603);
    ref.push(2603);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(1620);
    ref.push(1620);

//len_list: 118
//==============================


//==============================
    submit.push(6184);
    ref.push(6184);

//len_list: 119
//==============================


//==============================
    submit.push(8750);
    ref.push(8750);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(450);
    ref.push(450);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(6306);
    ref.push(6306);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(3714);
    ref.push(3714);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(4942);
    ref.push(4942);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    submit.push(2727);
    ref.push(2727);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(6219);
    ref.push(6219);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(8715);
    ref.push(8715);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(1887);
    ref.push(1887);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(1313);
    ref.push(1313);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(9010);
    ref.push(9010);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(5990);
    ref.push(5990);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.push(1240);
    ref.push(1240);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(4213);
    ref.push(4213);

//len_list: 121
//==============================


//==============================
    submit.push(275);
    ref.push(275);

//len_list: 122
//==============================


//==============================
    submit.push(551);
    ref.push(551);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(6029);
    ref.push(6029);

//len_list: 122
//==============================


//==============================
    submit.push(2339);
    ref.push(2339);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(2428);
    ref.push(2428);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(3740);
    ref.push(3740);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(1740);
    ref.push(1740);

//len_list: 124
//==============================


//==============================
    submit.push(9681);
    ref.push(9681);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(2800);
    ref.push(2800);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(2215);
    ref.push(2215);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(4570);
    ref.push(4570);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.push(8666);
    ref.push(8666);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(7437);
    ref.push(7437);

//len_list: 118
//==============================


//==============================
    submit.push(4809);
    ref.push(4809);

//len_list: 119
//==============================


//==============================
    submit.push(8047);
    ref.push(8047);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(6687);
    ref.push(6687);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(445);
    ref.push(445);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(2889);
    ref.push(2889);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(670);
    ref.push(670);

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.push(6591);
    ref.push(6591);

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.push(2346);
    ref.push(2346);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.push(5584);
    ref.push(5584);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(1673);
    ref.push(1673);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(8536);
    ref.push(8536);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(4191);
    ref.push(4191);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.push(2230);
    ref.push(2230);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(7495);
    ref.push(7495);

//len_list: 113
//==============================


//==============================
    submit.push(9659);
    ref.push(9659);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(7932);
    ref.push(7932);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(9287);
    ref.push(9287);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(2112);
    ref.push(2112);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(8132);
    ref.push(8132);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(1110);
    ref.push(1110);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(7382);
    ref.push(7382);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(6636);
    ref.push(6636);

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(7976);
    ref.push(7976);

//len_list: 110
//==============================


//==============================
    submit.push(9646);
    ref.push(9646);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(9846);
    ref.push(9846);

//len_list: 111
//==============================


//==============================
    submit.push(2522);
    ref.push(2522);

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(388);
    ref.push(388);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(1661);
    ref.push(1661);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(809);
    ref.push(809);

//len_list: 110
//==============================


//==============================
    submit.push(9413);
    ref.push(9413);

//len_list: 111
//==============================


//==============================
    submit.push(1150);
    ref.push(1150);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(6264);
    ref.push(6264);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(8886);
    ref.push(8886);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(9907);
    ref.push(9907);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(8777);
    ref.push(8777);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(8222);
    ref.push(8222);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(1102);
    ref.push(1102);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(8769);
    ref.push(8769);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(8058);
    ref.push(8058);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(7262);
    ref.push(7262);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(4913);
    ref.push(4913);

//len_list: 110
//==============================


//==============================
    submit.push(4466);
    ref.push(4466);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(8074);
    ref.push(8074);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(4564);
    ref.push(4564);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(4013);
    ref.push(4013);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(4431);
    ref.push(4431);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(2982);
    ref.push(2982);

//len_list: 111
//==============================


//==============================
    submit.push(9832);
    ref.push(9832);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(3780);
    ref.push(3780);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(6046);
    ref.push(6046);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(5860);
    ref.push(5860);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3587);
    ref.push(3587);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(1304);
    ref.push(1304);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(4741);
    ref.push(4741);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3413);
    ref.push(3413);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(2872);
    ref.push(2872);

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(9013);
    ref.push(9013);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(1434);
    ref.push(1434);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(5268);
    ref.push(5268);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(5007);
    ref.push(5007);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(7264);
    ref.push(7264);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(7396);
    ref.push(7396);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(2500);
    ref.push(2500);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(2433);
    ref.push(2433);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(4974);
    ref.push(4974);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(5619);
    ref.push(5619);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(1266);
    ref.push(1266);

//len_list: 111
//==============================


//==============================
    submit.push(936);
    ref.push(936);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(5710);
    ref.push(5710);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(572);
    ref.push(572);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3860);
    ref.push(3860);

//len_list: 113
//==============================


//==============================
    submit.push(1093);
    ref.push(1093);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(1664);
    ref.push(1664);

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(7854);
    ref.push(7854);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(8975);
    ref.push(8975);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(7114);
    ref.push(7114);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(4479);
    ref.push(4479);

//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(3711);
    ref.push(3711);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3218);
    ref.push(3218);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(8574);
    ref.push(8574);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(4949);
    ref.push(4949);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(2563);
    ref.push(2563);

//len_list: 110
//==============================


//==============================
    submit.push(5394);
    ref.push(5394);

//len_list: 111
//==============================


//==============================
    submit.push(4923);
    ref.push(4923);

//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(3379);
    ref.push(3379);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(4166);
    ref.push(4166);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(2987);
    ref.push(2987);

//len_list: 111
//==============================


//==============================
    submit.push(6368);
    ref.push(6368);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(3361);
    ref.push(3361);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(7057);
    ref.push(7057);

//len_list: 114
//==============================


//==============================
    submit.push(7698);
    ref.push(7698);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(9184);
    ref.push(9184);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    submit.push(2279);
    ref.push(2279);

//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(2889);
    ref.push(2889);

//len_list: 114
//==============================


//==============================
    submit.push(2540);
    ref.push(2540);

//len_list: 115
//==============================


//==============================
    submit.push(6147);
    ref.push(6147);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(8624);
    ref.push(8624);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(8292);
    ref.push(8292);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    submit.push(4187);
    ref.push(4187);

//len_list: 114
//==============================


//==============================
    submit.push(2677);
    ref.push(2677);

//len_list: 115
//==============================


//==============================
    submit.push(9777);
    ref.push(9777);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(4989);
    ref.push(4989);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(7243);
    ref.push(7243);

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.push(9500);
    ref.push(9500);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(7142);
    ref.push(7142);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(4312);
    ref.push(4312);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(9196);
    ref.push(9196);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(127);
    ref.push(127);

//len_list: 121
//==============================


//==============================
    submit.push(9451);
    ref.push(9451);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(7977);
    ref.push(7977);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(4051);
    ref.push(4051);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(1145);
    ref.push(1145);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(1741);
    ref.push(1741);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(5045);
    ref.push(5045);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(9255);
    ref.push(9255);

//len_list: 122
//==============================


//==============================
    submit.push(4932);
    ref.push(4932);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(2731);
    ref.push(2731);

//len_list: 123
//==============================


//==============================
    submit.push(2688);
    ref.push(2688);

//len_list: 124
//==============================


//==============================
    submit.push(5054);
    ref.push(5054);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(5156);
    ref.push(5156);

//len_list: 126
//==============================


//==============================
    submit.push(6048);
    ref.push(6048);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(4474);
    ref.push(4474);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(932);
    ref.push(932);

//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(1072);
    ref.push(1072);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.push(9010);
    ref.push(9010);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(1539);
    ref.push(1539);

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(438);
    ref.push(438);

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(1502);
    ref.push(1502);

//len_list: 118
//==============================


//==============================
    submit.push(8921);
    ref.push(8921);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(3281);
    ref.push(3281);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(1075);
    ref.push(1075);

//len_list: 121
//==============================


//==============================
    submit.push(9746);
    ref.push(9746);

//len_list: 122
//==============================


//==============================
    submit.push(9970);
    ref.push(9970);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(2698);
    ref.push(2698);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(6799);
    ref.push(6799);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(5018);
    ref.push(5018);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(9340);
    ref.push(9340);

//len_list: 122
//==============================


//==============================
    submit.push(3702);
    ref.push(3702);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(852);
    ref.push(852);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(9668);
    ref.push(9668);

//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(2368);
    ref.push(2368);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(6168);
    ref.push(6168);

//len_list: 126
//==============================


//==============================
    submit.push(7291);
    ref.push(7291);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(2212);
    ref.push(2212);

//len_list: 127
//==============================


//==============================
    submit.push(3660);
    ref.push(3660);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.push(8306);
    ref.push(8306);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(5191);
    ref.push(5191);

//len_list: 128
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.push(1202);
    ref.push(1202);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.push(6565);
    ref.push(6565);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.push(9415);
    ref.push(9415);

//len_list: 128
//==============================


//==============================
    submit.push(6799);
    ref.push(6799);

//len_list: 129
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 129
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 128
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    submit.push(8059);
    ref.push(8059);

//len_list: 128
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(9997);
    ref.push(9997);

//len_list: 126
//==============================


//==============================
    submit.push(6664);
    ref.push(6664);

//len_list: 127
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 127
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 125
//==============================


//==============================
    submit.push(3332);
    ref.push(3332);

//len_list: 126
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.push(8390);
    ref.push(8390);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    submit.push(7523);
    ref.push(7523);

//len_list: 125
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(2040);
    ref.push(2040);

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(596);
    ref.push(596);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(8096);
    ref.push(8096);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(6710);
    ref.push(6710);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(451);
    ref.push(451);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(3805);
    ref.push(3805);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(8294);
    ref.push(8294);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(301);
    ref.push(301);

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(2522);
    ref.push(2522);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(7025);
    ref.push(7025);

//len_list: 119
//==============================


//==============================
    submit.push(9535);
    ref.push(9535);

//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(9135);
    ref.push(9135);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(2086);
    ref.push(2086);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(9882);
    ref.push(9882);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(9581);
    ref.push(9581);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    submit.push(397);
    ref.push(397);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(9966);
    ref.push(9966);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.push(2454);
    ref.push(2454);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(6620);
    ref.push(6620);

//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(8123);
    ref.push(8123);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(5508);
    ref.push(5508);

//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    submit.push(9880);
    ref.push(9880);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(9273);
    ref.push(9273);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


}
