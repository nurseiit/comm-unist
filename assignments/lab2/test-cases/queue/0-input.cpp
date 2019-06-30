
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (336,1482)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(336)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(5204);
    ref.push(5204);

//len_list: 1
//==============================


//==============================
    submit.push(8322);
    ref.push(8322);

//len_list: 2
//==============================


//==============================
    submit.push(2763);
    ref.push(2763);

//len_list: 3
//==============================


//==============================
    submit.push(6905);
    ref.push(6905);

//len_list: 4
//==============================


//==============================
    submit.push(9038);
    ref.push(9038);

//len_list: 5
//==============================


//==============================
    submit.push(7563);
    ref.push(7563);

//len_list: 6
//==============================


//==============================
    submit.push(7655);
    ref.push(7655);

//len_list: 7
//==============================


//==============================
    submit.push(2298);
    ref.push(2298);

//len_list: 8
//==============================


//==============================
    submit.push(9872);
    ref.push(9872);

//len_list: 9
//==============================


//==============================
    submit.push(4483);
    ref.push(4483);

//len_list: 10
//==============================


//==============================
    submit.push(2138);
    ref.push(2138);

//len_list: 11
//==============================


//==============================
    submit.push(4326);
    ref.push(4326);

//len_list: 12
//==============================


//==============================
    submit.push(1395);
    ref.push(1395);

//len_list: 13
//==============================


//==============================
    submit.push(7716);
    ref.push(7716);

//len_list: 14
//==============================


//==============================
    submit.push(4744);
    ref.push(4744);

//len_list: 15
//==============================


//==============================
    submit.push(7075);
    ref.push(7075);

//len_list: 16
//==============================


//==============================
    submit.push(4427);
    ref.push(4427);

//len_list: 17
//==============================


//==============================
    submit.push(809);
    ref.push(809);

//len_list: 18
//==============================


//==============================
    submit.push(7018);
    ref.push(7018);

//len_list: 19
//==============================


//==============================
    submit.push(6465);
    ref.push(6465);

//len_list: 20
//==============================


//==============================
    submit.push(7633);
    ref.push(7633);

//len_list: 21
//==============================


//==============================
    submit.push(9855);
    ref.push(9855);

//len_list: 22
//==============================


//==============================
    submit.push(9921);
    ref.push(9921);

//len_list: 23
//==============================


//==============================
    submit.push(4546);
    ref.push(4546);

//len_list: 24
//==============================


//==============================
    submit.push(43);
    ref.push(43);

//len_list: 25
//==============================


//==============================
    submit.push(65);
    ref.push(65);

//len_list: 26
//==============================


//==============================
    submit.push(974);
    ref.push(974);

//len_list: 27
//==============================


//==============================
    submit.push(2057);
    ref.push(2057);

//len_list: 28
//==============================


//==============================
    submit.push(6847);
    ref.push(6847);

//len_list: 29
//==============================


//==============================
    submit.push(4287);
    ref.push(4287);

//len_list: 30
//==============================


//==============================
    submit.push(1667);
    ref.push(1667);

//len_list: 31
//==============================


//==============================
    submit.push(9885);
    ref.push(9885);

//len_list: 32
//==============================


//==============================
    submit.push(945);
    ref.push(945);

//len_list: 33
//==============================


//==============================
    submit.push(4211);
    ref.push(4211);

//len_list: 34
//==============================


//==============================
    submit.push(7843);
    ref.push(7843);

//len_list: 35
//==============================


//==============================
    submit.push(8545);
    ref.push(8545);

//len_list: 36
//==============================


//==============================
    submit.push(1134);
    ref.push(1134);

//len_list: 37
//==============================


//==============================
    submit.push(3576);
    ref.push(3576);

//len_list: 38
//==============================


//==============================
    submit.push(6725);
    ref.push(6725);

//len_list: 39
//==============================


//==============================
    submit.push(7387);
    ref.push(7387);

//len_list: 40
//==============================


//==============================
    submit.push(7727);
    ref.push(7727);

//len_list: 41
//==============================


//==============================
    submit.push(3852);
    ref.push(3852);

//len_list: 42
//==============================


//==============================
    submit.push(9346);
    ref.push(9346);

//len_list: 43
//==============================


//==============================
    submit.push(4611);
    ref.push(4611);

//len_list: 44
//==============================


//==============================
    submit.push(1762);
    ref.push(1762);

//len_list: 45
//==============================


//==============================
    submit.push(5417);
    ref.push(5417);

//len_list: 46
//==============================


//==============================
    submit.push(369);
    ref.push(369);

//len_list: 47
//==============================


//==============================
    submit.push(3295);
    ref.push(3295);

//len_list: 48
//==============================


//==============================
    submit.push(1176);
    ref.push(1176);

//len_list: 49
//==============================


//==============================
    submit.push(1249);
    ref.push(1249);

//len_list: 50
//==============================


//==============================
    submit.push(8860);
    ref.push(8860);

//len_list: 51
//==============================


//==============================
    submit.push(800);
    ref.push(800);

//len_list: 52
//==============================


//==============================
    submit.push(3190);
    ref.push(3190);

//len_list: 53
//==============================


//==============================
    submit.push(7634);
    ref.push(7634);

//len_list: 54
//==============================


//==============================
    submit.push(9399);
    ref.push(9399);

//len_list: 55
//==============================


//==============================
    submit.push(2978);
    ref.push(2978);

//len_list: 56
//==============================


//==============================
    submit.push(4923);
    ref.push(4923);

//len_list: 57
//==============================


//==============================
    submit.push(1074);
    ref.push(1074);

//len_list: 58
//==============================


//==============================
    submit.push(1167);
    ref.push(1167);

//len_list: 59
//==============================


//==============================
    submit.push(7145);
    ref.push(7145);

//len_list: 60
//==============================


//==============================
    submit.push(9115);
    ref.push(9115);

//len_list: 61
//==============================


//==============================
    submit.push(9151);
    ref.push(9151);

//len_list: 62
//==============================


//==============================
    submit.push(6051);
    ref.push(6051);

//len_list: 63
//==============================


//==============================
    submit.push(2305);
    ref.push(2305);

//len_list: 64
//==============================


//==============================
    submit.push(6500);
    ref.push(6500);

//len_list: 65
//==============================


//==============================
    submit.push(3042);
    ref.push(3042);

//len_list: 66
//==============================


//==============================
    submit.push(1113);
    ref.push(1113);

//len_list: 67
//==============================


//==============================
    submit.push(2557);
    ref.push(2557);

//len_list: 68
//==============================


//==============================
    submit.push(2496);
    ref.push(2496);

//len_list: 69
//==============================


//==============================
    submit.push(8855);
    ref.push(8855);

//len_list: 70
//==============================


//==============================
    submit.push(895);
    ref.push(895);

//len_list: 71
//==============================


//==============================
    submit.push(4371);
    ref.push(4371);

//len_list: 72
//==============================


//==============================
    submit.push(5398);
    ref.push(5398);

//len_list: 73
//==============================


//==============================
    submit.push(4906);
    ref.push(4906);

//len_list: 74
//==============================


//==============================
    submit.push(7958);
    ref.push(7958);

//len_list: 75
//==============================


//==============================
    submit.push(7961);
    ref.push(7961);

//len_list: 76
//==============================


//==============================
    submit.push(7721);
    ref.push(7721);

//len_list: 77
//==============================


//==============================
    submit.push(8167);
    ref.push(8167);

//len_list: 78
//==============================


//==============================
    submit.push(5727);
    ref.push(5727);

//len_list: 79
//==============================


//==============================
    submit.push(7888);
    ref.push(7888);

//len_list: 80
//==============================


//==============================
    submit.push(9667);
    ref.push(9667);

//len_list: 81
//==============================


//==============================
    submit.push(4622);
    ref.push(4622);

//len_list: 82
//==============================


//==============================
    submit.push(4576);
    ref.push(4576);

//len_list: 83
//==============================


//==============================
    submit.push(1003);
    ref.push(1003);

//len_list: 84
//==============================


//==============================
    submit.push(4876);
    ref.push(4876);

//len_list: 85
//==============================


//==============================
    submit.push(1451);
    ref.push(1451);

//len_list: 86
//==============================


//==============================
    submit.push(4975);
    ref.push(4975);

//len_list: 87
//==============================


//==============================
    submit.push(8555);
    ref.push(8555);

//len_list: 88
//==============================


//==============================
    submit.push(5074);
    ref.push(5074);

//len_list: 89
//==============================


//==============================
    submit.push(5900);
    ref.push(5900);

//len_list: 90
//==============================


//==============================
    submit.push(9185);
    ref.push(9185);

//len_list: 91
//==============================


//==============================
    submit.push(912);
    ref.push(912);

//len_list: 92
//==============================


//==============================
    submit.push(1254);
    ref.push(1254);

//len_list: 93
//==============================


//==============================
    submit.push(1600);
    ref.push(1600);

//len_list: 94
//==============================


//==============================
    submit.push(3359);
    ref.push(3359);

//len_list: 95
//==============================


//==============================
    submit.push(777);
    ref.push(777);

//len_list: 96
//==============================


//==============================
    submit.push(1382);
    ref.push(1382);

//len_list: 97
//==============================


//==============================
    submit.push(7642);
    ref.push(7642);

//len_list: 98
//==============================


//==============================
    submit.push(3071);
    ref.push(3071);

//len_list: 99
//==============================


//==============================
    submit.push(185);
    ref.push(185);

//len_list: 100
//==============================


//==============================
    submit.push(5944);
    ref.push(5944);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3332);
    ref.push(3332);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3401);
    ref.push(3401);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(5156);
    ref.push(5156);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7648);
    ref.push(7648);

//len_list: 101
//==============================


//==============================
    submit.push(609);
    ref.push(609);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1192);
    ref.push(1192);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(6282);
    ref.push(6282);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(4365);
    ref.push(4365);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(8525);
    ref.push(8525);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(4870);
    ref.push(4870);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(2257);
    ref.push(2257);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(687);
    ref.push(687);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(8684);
    ref.push(8684);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(1439);
    ref.push(1439);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(1882);
    ref.push(1882);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(8478);
    ref.push(8478);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(9709);
    ref.push(9709);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(6607);
    ref.push(6607);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(2276);
    ref.push(2276);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(5529);
    ref.push(5529);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(2057);
    ref.push(2057);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7815);
    ref.push(7815);

//len_list: 101
//==============================


//==============================
    submit.push(6935);
    ref.push(6935);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7584);
    ref.push(7584);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(1924);
    ref.push(1924);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(3126);
    ref.push(3126);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(2769);
    ref.push(2769);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(1843);
    ref.push(1843);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(5118);
    ref.push(5118);

//len_list: 101
//==============================


//==============================
    submit.push(5280);
    ref.push(5280);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(4380);
    ref.push(4380);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(6891);
    ref.push(6891);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(898);
    ref.push(898);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(3408);
    ref.push(3408);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(476);
    ref.push(476);

//len_list: 103
//==============================


//==============================
    submit.push(6359);
    ref.push(6359);

//len_list: 104
//==============================


//==============================
    submit.push(294);
    ref.push(294);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(7138);
    ref.push(7138);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(163);
    ref.push(163);

//len_list: 100
//==============================


//==============================
    submit.push(2680);
    ref.push(2680);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(362);
    ref.push(362);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(6024);
    ref.push(6024);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(3381);
    ref.push(3381);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(6286);
    ref.push(6286);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(3680);
    ref.push(3680);

//len_list: 100
//==============================


//==============================
    submit.push(5588);
    ref.push(5588);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(9625);
    ref.push(9625);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(1424);
    ref.push(1424);

//len_list: 101
//==============================


//==============================
    submit.push(7037);
    ref.push(7037);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3956);
    ref.push(3956);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(5194);
    ref.push(5194);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(5769);
    ref.push(5769);

//len_list: 102
//==============================


//==============================
    submit.push(7568);
    ref.push(7568);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(9241);
    ref.push(9241);

//len_list: 104
//==============================


//==============================
    submit.push(6719);
    ref.push(6719);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5857);
    ref.push(5857);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5655);
    ref.push(5655);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(2457);
    ref.push(2457);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(3957);
    ref.push(3957);

//len_list: 106
//==============================


//==============================
    submit.push(3610);
    ref.push(3610);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(1821);
    ref.push(1821);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.push(8585);
    ref.push(8585);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(188);
    ref.push(188);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(4442);
    ref.push(4442);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(1708);
    ref.push(1708);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(4579);
    ref.push(4579);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(6326);
    ref.push(6326);

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(499);
    ref.push(499);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(5394);
    ref.push(5394);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(9322);
    ref.push(9322);

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(8453);
    ref.push(8453);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.push(8400);
    ref.push(8400);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(3397);
    ref.push(3397);

//len_list: 108
//==============================


//==============================
    submit.push(1827);
    ref.push(1827);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(5122);
    ref.push(5122);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(841);
    ref.push(841);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(3558);
    ref.push(3558);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(2402);
    ref.push(2402);

//len_list: 104
//==============================


//==============================
    submit.push(4993);
    ref.push(4993);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5739);
    ref.push(5739);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(3841);
    ref.push(3841);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(5981);
    ref.push(5981);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5501);
    ref.push(5501);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(7640);
    ref.push(7640);

//len_list: 103
//==============================


//==============================
    submit.push(2896);
    ref.push(2896);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(981);
    ref.push(981);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(2422);
    ref.push(2422);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(7940);
    ref.push(7940);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(3998);
    ref.push(3998);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(363);
    ref.push(363);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(8757);
    ref.push(8757);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(7086);
    ref.push(7086);

//len_list: 100
//==============================


//==============================
    submit.push(1000);
    ref.push(1000);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(9961);
    ref.push(9961);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(8765);
    ref.push(8765);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(2709);
    ref.push(2709);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1200);
    ref.push(1200);

//len_list: 102
//==============================


//==============================
    submit.push(9330);
    ref.push(9330);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5216);
    ref.push(5216);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(1124);
    ref.push(1124);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(9946);
    ref.push(9946);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(6364);
    ref.push(6364);

//len_list: 104
//==============================


//==============================
    submit.push(2598);
    ref.push(2598);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(8590);
    ref.push(8590);

//len_list: 106
//==============================


//==============================
    submit.push(4505);
    ref.push(4505);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(6048);
    ref.push(6048);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(202);
    ref.push(202);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(6595);
    ref.push(6595);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(864);
    ref.push(864);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(2169);
    ref.push(2169);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(6242);
    ref.push(6242);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(3224);
    ref.push(3224);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(7796);
    ref.push(7796);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(9161);
    ref.push(9161);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(2144);
    ref.push(2144);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(4488);
    ref.push(4488);

//len_list: 104
//==============================


//==============================
    submit.push(9778);
    ref.push(9778);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(7153);
    ref.push(7153);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(9531);
    ref.push(9531);

//len_list: 103
//==============================


//==============================
    submit.push(515);
    ref.push(515);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(9195);
    ref.push(9195);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5194);
    ref.push(5194);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(1020);
    ref.push(1020);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(8479);
    ref.push(8479);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(2427);
    ref.push(2427);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(9964);
    ref.push(9964);

//len_list: 106
//==============================


//==============================
    submit.push(9884);
    ref.push(9884);

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
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(8972);
    ref.push(8972);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(4580);
    ref.push(4580);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(4464);
    ref.push(4464);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(2018);
    ref.push(2018);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(5771);
    ref.push(5771);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(7285);
    ref.push(7285);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(4564);
    ref.push(4564);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(9368);
    ref.push(9368);

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(6245);
    ref.push(6245);

//len_list: 108
//==============================


//==============================
    submit.push(8986);
    ref.push(8986);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(884);
    ref.push(884);

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(7407);
    ref.push(7407);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(5684);
    ref.push(5684);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(6244);
    ref.push(6244);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(1458);
    ref.push(1458);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
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
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(7140);
    ref.push(7140);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(8872);
    ref.push(8872);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(3157);
    ref.push(3157);

//len_list: 104
//==============================


//==============================
    submit.push(3820);
    ref.push(3820);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(122);
    ref.push(122);

//len_list: 102
//==============================


//==============================
    submit.push(1104);
    ref.push(1104);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(3209);
    ref.push(3209);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(2928);
    ref.push(2928);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(4467);
    ref.push(4467);

//len_list: 105
//==============================


//==============================
    submit.push(6501);
    ref.push(6501);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(7262);
    ref.push(7262);

//len_list: 106
//==============================


//==============================
    submit.push(9756);
    ref.push(9756);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(5036);
    ref.push(5036);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(4039);
    ref.push(4039);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(6806);
    ref.push(6806);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(6463);
    ref.push(6463);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(7318);
    ref.push(7318);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(1271);
    ref.push(1271);

//len_list: 104
//==============================


//==============================
    submit.push(3308);
    ref.push(3308);

//len_list: 105
//==============================


//==============================
    submit.push(1191);
    ref.push(1191);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(9283);
    ref.push(9283);

//len_list: 106
//==============================


//==============================
    submit.push(8696);
    ref.push(8696);

//len_list: 107
//==============================


//==============================
    submit.push(3166);
    ref.push(3166);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(2635);
    ref.push(2635);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(8761);
    ref.push(8761);

//len_list: 106
//==============================


//==============================
    submit.push(3028);
    ref.push(3028);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(5863);
    ref.push(5863);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(8119);
    ref.push(8119);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5112);
    ref.push(5112);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(66);
    ref.push(66);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(4199);
    ref.push(4199);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(122);
    ref.push(122);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(9112);
    ref.push(9112);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(8833);
    ref.push(8833);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 518
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(2891);
    ref.push(2891);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(1279);
    ref.push(1279);

//len_list: 102
//==============================


//==============================
    submit.push(4895);
    ref.push(4895);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(7738);
    ref.push(7738);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(2918);
    ref.push(2918);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(6248);
    ref.push(6248);

//len_list: 105
//==============================


//==============================
    submit.push(2040);
    ref.push(2040);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(6741);
    ref.push(6741);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(5492);
    ref.push(5492);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(9017);
    ref.push(9017);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(9757);
    ref.push(9757);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(6501);
    ref.push(6501);

//len_list: 104
//==============================


//==============================
    submit.push(2046);
    ref.push(2046);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5142);
    ref.push(5142);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(6032);
    ref.push(6032);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(8484);
    ref.push(8484);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(611);
    ref.push(611);

//len_list: 107
//==============================


//==============================
    submit.push(4104);
    ref.push(4104);

//len_list: 108
//==============================


//==============================
    submit.push(586);
    ref.push(586);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(6972);
    ref.push(6972);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(9403);
    ref.push(9403);

//len_list: 110
//==============================


//==============================
    submit.push(982);
    ref.push(982);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(687);
    ref.push(687);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(2089);
    ref.push(2089);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(4067);
    ref.push(4067);

//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(8607);
    ref.push(8607);

//len_list: 113
//==============================


//==============================
    submit.push(327);
    ref.push(327);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(6114);
    ref.push(6114);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(2940);
    ref.push(2940);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(9097);
    ref.push(9097);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(7420);
    ref.push(7420);

//len_list: 111
//==============================


//==============================
    submit.push(904);
    ref.push(904);

//len_list: 112
//==============================


//==============================
    submit.push(5030);
    ref.push(5030);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(1118);
    ref.push(1118);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(9489);
    ref.push(9489);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 588
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
    submit.push(2857);
    ref.push(2857);

//len_list: 112
//==============================


//==============================
    submit.push(7372);
    ref.push(7372);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(2739);
    ref.push(2739);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 595
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(133);
    ref.push(133);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(6521);
    ref.push(6521);

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
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(1482);
    ref.push(1482);

//len_list: 114
//==============================


//==============================
    submit.push(5697);
    ref.push(5697);

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
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(5251);
    ref.push(5251);

//len_list: 114
//==============================


//==============================
    submit.push(7226);
    ref.push(7226);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(9405);
    ref.push(9405);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(7700);
    ref.push(7700);

//len_list: 116
//==============================


//==============================
    submit.push(4504);
    ref.push(4504);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(8366);
    ref.push(8366);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(2761);
    ref.push(2761);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 630
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
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(7399);
    ref.push(7399);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(2476);
    ref.push(2476);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(860);
    ref.push(860);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(8592);
    ref.push(8592);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(5408);
    ref.push(5408);

//len_list: 118
//==============================


//==============================
    submit.push(3408);
    ref.push(3408);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(4276);
    ref.push(4276);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(8300);
    ref.push(8300);

//len_list: 118
//==============================


//==============================
    submit.push(6515);
    ref.push(6515);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(8547);
    ref.push(8547);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
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
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(6193);
    ref.push(6193);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.push(3323);
    ref.push(3323);

//len_list: 120
//==============================


//==============================
    submit.push(724);
    ref.push(724);

//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(9177);
    ref.push(9177);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(4943);
    ref.push(4943);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 672
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(7716);
    ref.push(7716);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 679
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
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(3552);
    ref.push(3552);

//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(2469);
    ref.push(2469);

//len_list: 121
//==============================


//==============================
    submit.push(3650);
    ref.push(3650);

//len_list: 122
//==============================


//==============================
    submit.push(9431);
    ref.push(9431);

//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    submit.push(2940);
    ref.push(2940);

//len_list: 124
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 123
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 123
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    submit.push(1474);
    ref.push(1474);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(2355);
    ref.push(2355);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 699
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
//num_require: 700
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(2762);
    ref.push(2762);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 119
//==============================


//==============================
    submit.push(9840);
    ref.push(9840);

//len_list: 120
//==============================


//==============================
    submit.push(297);
    ref.push(297);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 709
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
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(133);
    ref.push(133);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    submit.push(1822);
    ref.push(1822);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 119
//==============================


//==============================
    submit.push(3966);
    ref.push(3966);

//len_list: 120
//==============================


//==============================
    submit.push(532);
    ref.push(532);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(7261);
    ref.push(7261);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 120
//==============================


//==============================
    submit.push(196);
    ref.push(196);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.push(8257);
    ref.push(8257);

//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 122
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 736
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
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 120
//==============================


//==============================
    submit.push(2072);
    ref.push(2072);

//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 121
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 740
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
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(2966);
    ref.push(2966);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 112
//==============================


//==============================
    submit.push(3317);
    ref.push(3317);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 755
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
//num_require: 756
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
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(7740);
    ref.push(7740);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(5287);
    ref.push(5287);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(4199);
    ref.push(4199);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(2294);
    ref.push(2294);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(5923);
    ref.push(5923);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4237);
    ref.push(4237);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(4807);
    ref.push(4807);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(1728);
    ref.push(1728);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 784
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
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(7401);
    ref.push(7401);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
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
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(5333);
    ref.push(5333);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(7285);
    ref.push(7285);

//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5877);
    ref.push(5877);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(6468);
    ref.push(6468);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1603);
    ref.push(1603);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(2912);
    ref.push(2912);

//len_list: 102
//==============================


//==============================
    submit.push(3755);
    ref.push(3755);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(7213);
    ref.push(7213);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


}
