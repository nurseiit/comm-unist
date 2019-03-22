
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (204,1730)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(204)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(4160);
    ref.push(4160);

//len_list: 1
//==============================


//==============================
    submit.push(6064);
    ref.push(6064);

//len_list: 2
//==============================


//==============================
    submit.push(8359);
    ref.push(8359);

//len_list: 3
//==============================


//==============================
    submit.push(4976);
    ref.push(4976);

//len_list: 4
//==============================


//==============================
    submit.push(7577);
    ref.push(7577);

//len_list: 5
//==============================


//==============================
    submit.push(3296);
    ref.push(3296);

//len_list: 6
//==============================


//==============================
    submit.push(6132);
    ref.push(6132);

//len_list: 7
//==============================


//==============================
    submit.push(3432);
    ref.push(3432);

//len_list: 8
//==============================


//==============================
    submit.push(2557);
    ref.push(2557);

//len_list: 9
//==============================


//==============================
    submit.push(6623);
    ref.push(6623);

//len_list: 10
//==============================


//==============================
    submit.push(5112);
    ref.push(5112);

//len_list: 11
//==============================


//==============================
    submit.push(6319);
    ref.push(6319);

//len_list: 12
//==============================


//==============================
    submit.push(5341);
    ref.push(5341);

//len_list: 13
//==============================


//==============================
    submit.push(9151);
    ref.push(9151);

//len_list: 14
//==============================


//==============================
    submit.push(1083);
    ref.push(1083);

//len_list: 15
//==============================


//==============================
    submit.push(9426);
    ref.push(9426);

//len_list: 16
//==============================


//==============================
    submit.push(3410);
    ref.push(3410);

//len_list: 17
//==============================


//==============================
    submit.push(1797);
    ref.push(1797);

//len_list: 18
//==============================


//==============================
    submit.push(3747);
    ref.push(3747);

//len_list: 19
//==============================


//==============================
    submit.push(5658);
    ref.push(5658);

//len_list: 20
//==============================


//==============================
    submit.push(8744);
    ref.push(8744);

//len_list: 21
//==============================


//==============================
    submit.push(9737);
    ref.push(9737);

//len_list: 22
//==============================


//==============================
    submit.push(2336);
    ref.push(2336);

//len_list: 23
//==============================


//==============================
    submit.push(842);
    ref.push(842);

//len_list: 24
//==============================


//==============================
    submit.push(6639);
    ref.push(6639);

//len_list: 25
//==============================


//==============================
    submit.push(8019);
    ref.push(8019);

//len_list: 26
//==============================


//==============================
    submit.push(8561);
    ref.push(8561);

//len_list: 27
//==============================


//==============================
    submit.push(3334);
    ref.push(3334);

//len_list: 28
//==============================


//==============================
    submit.push(8543);
    ref.push(8543);

//len_list: 29
//==============================


//==============================
    submit.push(5106);
    ref.push(5106);

//len_list: 30
//==============================


//==============================
    submit.push(9503);
    ref.push(9503);

//len_list: 31
//==============================


//==============================
    submit.push(4715);
    ref.push(4715);

//len_list: 32
//==============================


//==============================
    submit.push(3174);
    ref.push(3174);

//len_list: 33
//==============================


//==============================
    submit.push(7163);
    ref.push(7163);

//len_list: 34
//==============================


//==============================
    submit.push(9492);
    ref.push(9492);

//len_list: 35
//==============================


//==============================
    submit.push(3237);
    ref.push(3237);

//len_list: 36
//==============================


//==============================
    submit.push(2969);
    ref.push(2969);

//len_list: 37
//==============================


//==============================
    submit.push(9276);
    ref.push(9276);

//len_list: 38
//==============================


//==============================
    submit.push(5855);
    ref.push(5855);

//len_list: 39
//==============================


//==============================
    submit.push(6070);
    ref.push(6070);

//len_list: 40
//==============================


//==============================
    submit.push(2282);
    ref.push(2282);

//len_list: 41
//==============================


//==============================
    submit.push(9304);
    ref.push(9304);

//len_list: 42
//==============================


//==============================
    submit.push(6017);
    ref.push(6017);

//len_list: 43
//==============================


//==============================
    submit.push(483);
    ref.push(483);

//len_list: 44
//==============================


//==============================
    submit.push(5445);
    ref.push(5445);

//len_list: 45
//==============================


//==============================
    submit.push(9481);
    ref.push(9481);

//len_list: 46
//==============================


//==============================
    submit.push(366);
    ref.push(366);

//len_list: 47
//==============================


//==============================
    submit.push(3317);
    ref.push(3317);

//len_list: 48
//==============================


//==============================
    submit.push(8783);
    ref.push(8783);

//len_list: 49
//==============================


//==============================
    submit.push(3419);
    ref.push(3419);

//len_list: 50
//==============================


//==============================
    submit.push(8636);
    ref.push(8636);

//len_list: 51
//==============================


//==============================
    submit.push(9965);
    ref.push(9965);

//len_list: 52
//==============================


//==============================
    submit.push(6004);
    ref.push(6004);

//len_list: 53
//==============================


//==============================
    submit.push(2521);
    ref.push(2521);

//len_list: 54
//==============================


//==============================
    submit.push(3761);
    ref.push(3761);

//len_list: 55
//==============================


//==============================
    submit.push(4674);
    ref.push(4674);

//len_list: 56
//==============================


//==============================
    submit.push(4912);
    ref.push(4912);

//len_list: 57
//==============================


//==============================
    submit.push(8518);
    ref.push(8518);

//len_list: 58
//==============================


//==============================
    submit.push(1079);
    ref.push(1079);

//len_list: 59
//==============================


//==============================
    submit.push(9946);
    ref.push(9946);

//len_list: 60
//==============================


//==============================
    submit.push(6267);
    ref.push(6267);

//len_list: 61
//==============================


//==============================
    submit.push(6616);
    ref.push(6616);

//len_list: 62
//==============================


//==============================
    submit.push(5021);
    ref.push(5021);

//len_list: 63
//==============================


//==============================
    submit.push(7679);
    ref.push(7679);

//len_list: 64
//==============================


//==============================
    submit.push(9284);
    ref.push(9284);

//len_list: 65
//==============================


//==============================
    submit.push(8100);
    ref.push(8100);

//len_list: 66
//==============================


//==============================
    submit.push(6586);
    ref.push(6586);

//len_list: 67
//==============================


//==============================
    submit.push(9242);
    ref.push(9242);

//len_list: 68
//==============================


//==============================
    submit.push(7373);
    ref.push(7373);

//len_list: 69
//==============================


//==============================
    submit.push(3932);
    ref.push(3932);

//len_list: 70
//==============================


//==============================
    submit.push(1518);
    ref.push(1518);

//len_list: 71
//==============================


//==============================
    submit.push(4044);
    ref.push(4044);

//len_list: 72
//==============================


//==============================
    submit.push(4329);
    ref.push(4329);

//len_list: 73
//==============================


//==============================
    submit.push(3310);
    ref.push(3310);

//len_list: 74
//==============================


//==============================
    submit.push(9579);
    ref.push(9579);

//len_list: 75
//==============================


//==============================
    submit.push(2234);
    ref.push(2234);

//len_list: 76
//==============================


//==============================
    submit.push(7114);
    ref.push(7114);

//len_list: 77
//==============================


//==============================
    submit.push(7709);
    ref.push(7709);

//len_list: 78
//==============================


//==============================
    submit.push(1131);
    ref.push(1131);

//len_list: 79
//==============================


//==============================
    submit.push(5118);
    ref.push(5118);

//len_list: 80
//==============================


//==============================
    submit.push(4702);
    ref.push(4702);

//len_list: 81
//==============================


//==============================
    submit.push(2782);
    ref.push(2782);

//len_list: 82
//==============================


//==============================
    submit.push(1689);
    ref.push(1689);

//len_list: 83
//==============================


//==============================
    submit.push(9609);
    ref.push(9609);

//len_list: 84
//==============================


//==============================
    submit.push(8998);
    ref.push(8998);

//len_list: 85
//==============================


//==============================
    submit.push(6106);
    ref.push(6106);

//len_list: 86
//==============================


//==============================
    submit.push(8563);
    ref.push(8563);

//len_list: 87
//==============================


//==============================
    submit.push(665);
    ref.push(665);

//len_list: 88
//==============================


//==============================
    submit.push(8476);
    ref.push(8476);

//len_list: 89
//==============================


//==============================
    submit.push(8494);
    ref.push(8494);

//len_list: 90
//==============================


//==============================
    submit.push(2363);
    ref.push(2363);

//len_list: 91
//==============================


//==============================
    submit.push(3915);
    ref.push(3915);

//len_list: 92
//==============================


//==============================
    submit.push(6629);
    ref.push(6629);

//len_list: 93
//==============================


//==============================
    submit.push(4290);
    ref.push(4290);

//len_list: 94
//==============================


//==============================
    submit.push(2476);
    ref.push(2476);

//len_list: 95
//==============================


//==============================
    submit.push(2692);
    ref.push(2692);

//len_list: 96
//==============================


//==============================
    submit.push(5431);
    ref.push(5431);

//len_list: 97
//==============================


//==============================
    submit.push(4523);
    ref.push(4523);

//len_list: 98
//==============================


//==============================
    submit.push(6023);
    ref.push(6023);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2780);
    ref.push(2780);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(1129);
    ref.push(1129);

//len_list: 101
//==============================


//==============================
    submit.push(8145);
    ref.push(8145);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
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
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(5377);
    ref.push(5377);

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
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(857);
    ref.push(857);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 20
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(5606);
    ref.push(5606);

//len_list: 101
//==============================


//==============================
    submit.push(2424);
    ref.push(2424);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    submit.push(2171);
    ref.push(2171);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7074);
    ref.push(7074);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3284);
    ref.push(3284);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3880);
    ref.push(3880);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5580);
    ref.push(5580);

//len_list: 99
//==============================


//==============================
    submit.push(5671);
    ref.push(5671);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(5442);
    ref.push(5442);

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
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4687);
    ref.push(4687);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 35
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
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6758);
    ref.push(6758);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5331);
    ref.push(5331);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6252);
    ref.push(6252);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(839);
    ref.push(839);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6879);
    ref.push(6879);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 47
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
    submit.push(6632);
    ref.push(6632);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(3914);
    ref.push(3914);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6908);
    ref.push(6908);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4918);
    ref.push(4918);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7987);
    ref.push(7987);

//len_list: 99
//==============================


//==============================
    submit.push(3524);
    ref.push(3524);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2615);
    ref.push(2615);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3804);
    ref.push(3804);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(7461);
    ref.push(7461);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2408);
    ref.push(2408);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5496);
    ref.push(5496);

//len_list: 99
//==============================


//==============================
    submit.push(6371);
    ref.push(6371);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(8257);
    ref.push(8257);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(313);
    ref.push(313);

//len_list: 102
//==============================


//==============================
    submit.push(6500);
    ref.push(6500);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(4750);
    ref.push(4750);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
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
//num_require: 82
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
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5655);
    ref.push(5655);

//len_list: 103
//==============================


//==============================
    submit.push(3070);
    ref.push(3070);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 85
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
//num_require: 86
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
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(1796);
    ref.push(1796);

//len_list: 103
//==============================


//==============================
    submit.push(524);
    ref.push(524);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(4304);
    ref.push(4304);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 98
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
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(2125);
    ref.push(2125);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(7867);
    ref.push(7867);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(4591);
    ref.push(4591);

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
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(6123);
    ref.push(6123);

//len_list: 106
//==============================


//==============================
    submit.push(5594);
    ref.push(5594);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(4101);
    ref.push(4101);

//len_list: 108
//==============================


//==============================
    submit.push(8297);
    ref.push(8297);

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
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(6616);
    ref.push(6616);

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    submit.push(2940);
    ref.push(2940);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 119
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
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(5041);
    ref.push(5041);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 123
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
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(4552);
    ref.push(4552);

//len_list: 109
//==============================


//==============================
    submit.push(391);
    ref.push(391);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(1504);
    ref.push(1504);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(1723);
    ref.push(1723);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(2627);
    ref.push(2627);

//len_list: 110
//==============================


//==============================
    submit.push(8492);
    ref.push(8492);

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
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(1831);
    ref.push(1831);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(914);
    ref.push(914);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    submit.push(9023);
    ref.push(9023);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(6347);
    ref.push(6347);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 161
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
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 167
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(8218);
    ref.push(8218);

//len_list: 107
//==============================


//==============================
    submit.push(3557);
    ref.push(3557);

//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.push(7542);
    ref.push(7542);

//len_list: 108
//==============================


//==============================
    submit.push(2339);
    ref.push(2339);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 171
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
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(1288);
    ref.push(1288);

//len_list: 109
//==============================


//==============================
    submit.push(6483);
    ref.push(6483);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(1615);
    ref.push(1615);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 173
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
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(6388);
    ref.push(6388);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 177
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
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(9854);
    ref.push(9854);

//len_list: 110
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 109
//==============================


//==============================
    submit.push(2631);
    ref.push(2631);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(7920);
    ref.push(7920);

//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 111
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 184
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
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
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(3652);
    ref.push(3652);

//len_list: 107
//==============================


//==============================
    submit.push(6383);
    ref.push(6383);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(7030);
    ref.push(7030);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 188
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
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(9701);
    ref.push(9701);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(2932);
    ref.push(2932);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 193
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
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 197
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
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5962);
    ref.push(5962);

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
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(4223);
    ref.push(4223);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(472);
    ref.push(472);

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
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(5136);
    ref.push(5136);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(7090);
    ref.push(7090);

//len_list: 107
//==============================


//==============================
    submit.push(4166);
    ref.push(4166);

//len_list: 108
//==============================


//==============================
    submit.push(2524);
    ref.push(2524);

//len_list: 109
//==============================


//==============================
    submit.push(6352);
    ref.push(6352);

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
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 220
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
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
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
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(3448);
    ref.push(3448);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
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
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 232
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(3849);
    ref.push(3849);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 240
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
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5312);
    ref.push(5312);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(6427);
    ref.push(6427);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9858);
    ref.push(9858);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(816);
    ref.push(816);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(8078);
    ref.push(8078);

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
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 255
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
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4663);
    ref.push(4663);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5337);
    ref.push(5337);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8427);
    ref.push(8427);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5484);
    ref.push(5484);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5217);
    ref.push(5217);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9252);
    ref.push(9252);

//len_list: 100
//==============================


//==============================
    submit.push(5257);
    ref.push(5257);

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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7273);
    ref.push(7273);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(7400);
    ref.push(7400);

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
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7321);
    ref.push(7321);

//len_list: 99
//==============================


//==============================
    submit.push(2498);
    ref.push(2498);

//len_list: 100
//==============================


//==============================
    submit.push(8065);
    ref.push(8065);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1942);
    ref.push(1942);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(6502);
    ref.push(6502);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(9203);
    ref.push(9203);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 290
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
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(63);
    ref.push(63);

//len_list: 100
//==============================


//==============================
    submit.push(603);
    ref.push(603);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(2508);
    ref.push(2508);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 293
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(113);
    ref.push(113);

//len_list: 99
//==============================


//==============================
    submit.push(7288);
    ref.push(7288);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(9584);
    ref.push(9584);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(1453);
    ref.push(1453);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3796);
    ref.push(3796);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(9354);
    ref.push(9354);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5150);
    ref.push(5150);

//len_list: 100
//==============================


//==============================
    submit.push(7760);
    ref.push(7760);

//len_list: 101
//==============================


//==============================
    submit.push(2213);
    ref.push(2213);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 307
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
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
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
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(5890);
    ref.push(5890);

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
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9001);
    ref.push(9001);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(9457);
    ref.push(9457);

//len_list: 99
//==============================


//==============================
    submit.push(9745);
    ref.push(9745);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4502);
    ref.push(4502);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(1632);
    ref.push(1632);

//len_list: 99
//==============================


//==============================
    submit.push(9451);
    ref.push(9451);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(8643);
    ref.push(8643);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1693);
    ref.push(1693);

//len_list: 102
//==============================


//==============================
    submit.push(4057);
    ref.push(4057);

//len_list: 103
//==============================


//==============================
    submit.push(8355);
    ref.push(8355);

//len_list: 104
//==============================


//==============================
    submit.push(509);
    ref.push(509);

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
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(8218);
    ref.push(8218);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 342
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
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 344
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
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(8039);
    ref.push(8039);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 348
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
//num_require: 349
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
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7150);
    ref.push(7150);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(6454);
    ref.push(6454);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 352
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
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1060);
    ref.push(1060);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(9333);
    ref.push(9333);

//len_list: 102
//==============================


//==============================
    submit.push(7164);
    ref.push(7164);

//len_list: 103
//==============================


//==============================
    submit.push(3488);
    ref.push(3488);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(982);
    ref.push(982);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
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
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(1431);
    ref.push(1431);

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
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(5946);
    ref.push(5946);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5699);
    ref.push(5699);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(7181);
    ref.push(7181);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1516);
    ref.push(1516);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4233);
    ref.push(4233);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5807);
    ref.push(5807);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7984);
    ref.push(7984);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1724);
    ref.push(1724);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 390
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
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 393
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
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4644);
    ref.push(4644);

//len_list: 101
//==============================


//==============================
    submit.push(8449);
    ref.push(8449);

//len_list: 102
//==============================


//==============================
    submit.push(2717);
    ref.push(2717);

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
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 399
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
//num_require: 400
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
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(5438);
    ref.push(5438);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5749);
    ref.push(5749);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(8333);
    ref.push(8333);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(126);
    ref.push(126);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(6094);
    ref.push(6094);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3830);
    ref.push(3830);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(4730);
    ref.push(4730);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(6033);
    ref.push(6033);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6407);
    ref.push(6407);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2340);
    ref.push(2340);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3103);
    ref.push(3103);

//len_list: 99
//==============================


//==============================
    submit.push(8037);
    ref.push(8037);

//len_list: 100
//==============================


//==============================
    submit.push(1219);
    ref.push(1219);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 424
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
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7761);
    ref.push(7761);

//len_list: 101
//==============================


//==============================
    submit.push(3160);
    ref.push(3160);

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
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(5090);
    ref.push(5090);

//len_list: 102
//==============================


//==============================
    submit.push(3343);
    ref.push(3343);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(6605);
    ref.push(6605);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(375);
    ref.push(375);

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
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(676);
    ref.push(676);

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
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(8955);
    ref.push(8955);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 434
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
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(6188);
    ref.push(6188);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(4996);
    ref.push(4996);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
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
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 440
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
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(1566);
    ref.push(1566);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(399);
    ref.push(399);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(2155);
    ref.push(2155);

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
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(9123);
    ref.push(9123);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 454
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
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 456
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
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(368);
    ref.push(368);

//len_list: 100
//==============================


//==============================
    submit.push(1308);
    ref.push(1308);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 462
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
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7883);
    ref.push(7883);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(8161);
    ref.push(8161);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(5983);
    ref.push(5983);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(9454);
    ref.push(9454);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(1210);
    ref.push(1210);

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
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(7440);
    ref.push(7440);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(3708);
    ref.push(3708);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(8369);
    ref.push(8369);

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
//num_require: 484
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
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(7179);
    ref.push(7179);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(7745);
    ref.push(7745);

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
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(9373);
    ref.push(9373);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(1486);
    ref.push(1486);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(9720);
    ref.push(9720);

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
//num_require: 508
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
//num_require: 509
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
    submit.push(218);
    ref.push(218);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(2272);
    ref.push(2272);

//len_list: 101
//==============================


//==============================
    submit.push(2766);
    ref.push(2766);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(6183);
    ref.push(6183);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(4225);
    ref.push(4225);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(280);
    ref.push(280);

//len_list: 104
//==============================


//==============================
    submit.push(6768);
    ref.push(6768);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(4345);
    ref.push(4345);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 522
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 531
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
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(9091);
    ref.push(9091);

//len_list: 103
//==============================


//==============================
    submit.push(1063);
    ref.push(1063);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(5823);
    ref.push(5823);

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
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(8454);
    ref.push(8454);

//len_list: 105
//==============================


//==============================
    submit.push(1678);
    ref.push(1678);

//len_list: 106
//==============================


//==============================
    submit.push(3737);
    ref.push(3737);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(7150);
    ref.push(7150);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 542
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
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(3901);
    ref.push(3901);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.push(2637);
    ref.push(2637);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
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
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 548
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
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(4090);
    ref.push(4090);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 554
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
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(6999);
    ref.push(6999);

//len_list: 107
//==============================


//==============================
    submit.push(5988);
    ref.push(5988);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.push(2321);
    ref.push(2321);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 561
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
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(6398);
    ref.push(6398);

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
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 569
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
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(2113);
    ref.push(2113);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 574
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 575
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
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 581
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
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4581);
    ref.push(4581);

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
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4807);
    ref.push(4807);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(3157);
    ref.push(3157);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8414);
    ref.push(8414);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3723);
    ref.push(3723);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(251);
    ref.push(251);

//len_list: 99
//==============================


//==============================
    submit.push(6272);
    ref.push(6272);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(1646);
    ref.push(1646);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 616
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(1672);
    ref.push(1672);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1132);
    ref.push(1132);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9576);
    ref.push(9576);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(9152);
    ref.push(9152);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1925);
    ref.push(1925);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 625
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
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(4057);
    ref.push(4057);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(3976);
    ref.push(3976);

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
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 635
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
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(9674);
    ref.push(9674);

//len_list: 101
//==============================


//==============================
    submit.push(1291);
    ref.push(1291);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(7748);
    ref.push(7748);

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
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(2619);
    ref.push(2619);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 640
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
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 647
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
    submit.push(8522);
    ref.push(8522);

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
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3356);
    ref.push(3356);

//len_list: 99
//==============================


//==============================
    submit.push(9449);
    ref.push(9449);

//len_list: 100
//==============================


//==============================
    submit.push(6517);
    ref.push(6517);

//len_list: 101
//==============================


//==============================
    submit.push(7819);
    ref.push(7819);

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
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6695);
    ref.push(6695);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2891);
    ref.push(2891);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4893);
    ref.push(4893);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(9000);
    ref.push(9000);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2129);
    ref.push(2129);

//len_list: 100
//==============================


//==============================
    submit.push(6336);
    ref.push(6336);

//len_list: 101
//==============================


//==============================
    submit.push(9923);
    ref.push(9923);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(4036);
    ref.push(4036);

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
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 664
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3367);
    ref.push(3367);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(3516);
    ref.push(3516);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(1800);
    ref.push(1800);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 668
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
//num_require: 669
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
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7719);
    ref.push(7719);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5579);
    ref.push(5579);

//len_list: 100
//==============================


//==============================
    submit.push(4187);
    ref.push(4187);

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
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6206);
    ref.push(6206);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(8668);
    ref.push(8668);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(984);
    ref.push(984);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(8173);
    ref.push(8173);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
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
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 686
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
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 691
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
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(7263);
    ref.push(7263);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(3232);
    ref.push(3232);

//len_list: 99
//==============================


//==============================
    submit.push(9454);
    ref.push(9454);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4742);
    ref.push(4742);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(6518);
    ref.push(6518);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6600);
    ref.push(6600);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4965);
    ref.push(4965);

//len_list: 99
//==============================


//==============================
    submit.push(4969);
    ref.push(4969);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 712
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
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4557);
    ref.push(4557);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2829);
    ref.push(2829);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6203);
    ref.push(6203);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2247);
    ref.push(2247);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6865);
    ref.push(6865);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4924);
    ref.push(4924);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2432);
    ref.push(2432);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(2201);
    ref.push(2201);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8037);
    ref.push(8037);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1678);
    ref.push(1678);

//len_list: 100
//==============================


//==============================
    submit.push(8680);
    ref.push(8680);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(7647);
    ref.push(7647);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 740
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
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6956);
    ref.push(6956);

//len_list: 101
//==============================


//==============================
    submit.push(1143);
    ref.push(1143);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 748
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
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1808);
    ref.push(1808);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 751
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
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(2764);
    ref.push(2764);

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
    submit.push(4760);
    ref.push(4760);

//len_list: 101
//==============================


//==============================
    submit.push(9429);
    ref.push(9429);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 762
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
    submit.push(119);
    ref.push(119);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1807);
    ref.push(1807);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(1049);
    ref.push(1049);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5790);
    ref.push(5790);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4703);
    ref.push(4703);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5300);
    ref.push(5300);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(9982);
    ref.push(9982);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9313);
    ref.push(9313);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 786
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
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(1069);
    ref.push(1069);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8236);
    ref.push(8236);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(9578);
    ref.push(9578);

//len_list: 100
//==============================


//==============================
    submit.push(3785);
    ref.push(3785);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 798
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
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(1116);
    ref.push(1116);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(4307);
    ref.push(4307);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(9154);
    ref.push(9154);

//len_list: 101
//==============================


//==============================
    submit.push(6212);
    ref.push(6212);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 807
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
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(3068);
    ref.push(3068);

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
//num_require: 809
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
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8185);
    ref.push(8185);

//len_list: 99
//==============================


//==============================
    submit.push(3783);
    ref.push(3783);

//len_list: 100
//==============================


//==============================
    submit.push(3706);
    ref.push(3706);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 815
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
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(410);
    ref.push(410);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(6353);
    ref.push(6353);

//len_list: 99
//==============================


//==============================
    submit.push(4619);
    ref.push(4619);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(4441);
    ref.push(4441);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6760);
    ref.push(6760);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 827
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
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8486);
    ref.push(8486);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1751);
    ref.push(1751);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(1087);
    ref.push(1087);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(5359);
    ref.push(5359);

//len_list: 99
//==============================


//==============================
    submit.push(850);
    ref.push(850);

//len_list: 100
//==============================


//==============================
    submit.push(3987);
    ref.push(3987);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(8018);
    ref.push(8018);

//len_list: 102
//==============================


//==============================
    submit.push(9327);
    ref.push(9327);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(1470);
    ref.push(1470);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(1975);
    ref.push(1975);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(9701);
    ref.push(9701);

//len_list: 105
//==============================


//==============================
    submit.push(1352);
    ref.push(1352);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(3849);
    ref.push(3849);

//len_list: 107
//==============================


//==============================
    submit.push(8111);
    ref.push(8111);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(4408);
    ref.push(4408);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(2098);
    ref.push(2098);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 855
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 864
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
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(5619);
    ref.push(5619);

//len_list: 108
//==============================


//==============================
    submit.push(1174);
    ref.push(1174);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(5745);
    ref.push(5745);

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
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 870
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
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 107
//==============================


//==============================
    submit.push(8976);
    ref.push(8976);

//len_list: 108
//==============================


//==============================
    submit.push(1910);
    ref.push(1910);

//len_list: 109
//==============================


//==============================
    submit.push(2628);
    ref.push(2628);

//len_list: 110
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(3517);
    ref.push(3517);

//len_list: 111
//==============================


//==============================
    submit.push(7321);
    ref.push(7321);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(1011);
    ref.push(1011);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 111
//==============================


//==============================
    submit.push(9025);
    ref.push(9025);

//len_list: 112
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 112
//==============================


//==============================
    submit.push(9932);
    ref.push(9932);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(4224);
    ref.push(4224);

//len_list: 114
//==============================


//==============================
    submit.push(6602);
    ref.push(6602);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(1091);
    ref.push(1091);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 890
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
    submit.push(7528);
    ref.push(7528);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 893
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
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(1418);
    ref.push(1418);

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
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(3822);
    ref.push(3822);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(2311);
    ref.push(2311);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 906
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
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 113
//==============================


//==============================
    submit.push(2015);
    ref.push(2015);

//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(9247);
    ref.push(9247);

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
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 114
//==============================


//==============================
    submit.push(4696);
    ref.push(4696);

//len_list: 115
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 115
//==============================


//==============================
    submit.push(4586);
    ref.push(4586);

//len_list: 116
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 115
//==============================


//==============================
    submit.push(4749);
    ref.push(4749);

//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(4053);
    ref.push(4053);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 916
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
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(2152);
    ref.push(2152);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(2639);
    ref.push(2639);

//len_list: 118
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 117
//==============================


//==============================
    submit.push(5929);
    ref.push(5929);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 118
//==============================


//==============================
    submit.push(234);
    ref.push(234);

//len_list: 119
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 920
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
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 924
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
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 116
//==============================


//==============================
    submit.push(5377);
    ref.push(5377);

//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 117
//==============================


//==============================
    submit.push(91);
    ref.push(91);

//len_list: 118
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 936
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


}
