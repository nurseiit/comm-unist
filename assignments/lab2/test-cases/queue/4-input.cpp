
    #include "catch.hpp"
    #include "MyQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (271,778)") {

    queue<int> ref;
    MyQueueImpl<int,static_cast<size_t>(271)> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(6478);
    ref.push(6478);

//len_list: 1
//==============================


//==============================
    submit.push(6910);
    ref.push(6910);

//len_list: 2
//==============================


//==============================
    submit.push(6178);
    ref.push(6178);

//len_list: 3
//==============================


//==============================
    submit.push(3332);
    ref.push(3332);

//len_list: 4
//==============================


//==============================
    submit.push(9358);
    ref.push(9358);

//len_list: 5
//==============================


//==============================
    submit.push(1250);
    ref.push(1250);

//len_list: 6
//==============================


//==============================
    submit.push(4506);
    ref.push(4506);

//len_list: 7
//==============================


//==============================
    submit.push(9286);
    ref.push(9286);

//len_list: 8
//==============================


//==============================
    submit.push(2550);
    ref.push(2550);

//len_list: 9
//==============================


//==============================
    submit.push(2504);
    ref.push(2504);

//len_list: 10
//==============================


//==============================
    submit.push(2402);
    ref.push(2402);

//len_list: 11
//==============================


//==============================
    submit.push(2343);
    ref.push(2343);

//len_list: 12
//==============================


//==============================
    submit.push(1764);
    ref.push(1764);

//len_list: 13
//==============================


//==============================
    submit.push(8338);
    ref.push(8338);

//len_list: 14
//==============================


//==============================
    submit.push(2985);
    ref.push(2985);

//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(7711);
    ref.push(7711);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(9176);
    ref.push(9176);

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
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(76);
    ref.push(76);

//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.push(1884);
    ref.push(1884);

//len_list: 16
//==============================


//==============================
    submit.push(6811);
    ref.push(6811);

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
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 7
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
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(5368);
    ref.push(5368);

//len_list: 16
//==============================


//==============================
    submit.push(4292);
    ref.push(4292);

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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(3251);
    ref.push(3251);

//len_list: 16
//==============================


//==============================
    submit.push(2347);
    ref.push(2347);

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
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 22
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
    submit.push(2700);
    ref.push(2700);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(9591);
    ref.push(9591);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 14
//==============================


//==============================
    submit.push(2483);
    ref.push(2483);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(3438);
    ref.push(3438);

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
    submit.push(3301);
    ref.push(3301);

//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 15
//==============================


//==============================
    submit.push(5740);
    ref.push(5740);

//len_list: 16
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 15
//==============================


//==============================
    submit.push(2815);
    ref.push(2815);

//len_list: 16
//==============================


//==============================
    submit.push(375);
    ref.push(375);

//len_list: 17
//==============================


//==============================
    submit.push(6940);
    ref.push(6940);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(5963);
    ref.push(5963);

//len_list: 19
//==============================


//==============================
    submit.push(2388);
    ref.push(2388);

//len_list: 20
//==============================


//==============================
    submit.push(4819);
    ref.push(4819);

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
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(3853);
    ref.push(3853);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(298);
    ref.push(298);

//len_list: 21
//==============================


//==============================
    submit.push(912);
    ref.push(912);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(6553);
    ref.push(6553);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(3749);
    ref.push(3749);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(6399);
    ref.push(6399);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 57
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
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(5294);
    ref.push(5294);

//len_list: 20
//==============================


//==============================
    submit.push(8947);
    ref.push(8947);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(8153);
    ref.push(8153);

//len_list: 21
//==============================


//==============================
    submit.push(8044);
    ref.push(8044);

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
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
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
    submit.push(8466);
    ref.push(8466);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(2856);
    ref.push(2856);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 65
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(3343);
    ref.push(3343);

//len_list: 19
//==============================


//==============================
    submit.push(8661);
    ref.push(8661);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(4737);
    ref.push(4737);

//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(8344);
    ref.push(8344);

//len_list: 21
//==============================


//==============================
    submit.push(5051);
    ref.push(5051);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(3724);
    ref.push(3724);

//len_list: 23
//==============================


//==============================
    submit.push(3791);
    ref.push(3791);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(9545);
    ref.push(9545);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(5052);
    ref.push(5052);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(6879);
    ref.push(6879);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(4666);
    ref.push(4666);

//len_list: 27
//==============================


//==============================
    submit.push(9531);
    ref.push(9531);

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
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(2576);
    ref.push(2576);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8625);
    ref.push(8625);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(2787);
    ref.push(2787);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(2761);
    ref.push(2761);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(6102);
    ref.push(6102);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(945);
    ref.push(945);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(7703);
    ref.push(7703);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 116
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
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(5839);
    ref.push(5839);

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 128
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
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 20
//==============================


//==============================
    submit.push(2032);
    ref.push(2032);

//len_list: 21
//==============================


//==============================
    submit.push(2230);
    ref.push(2230);

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
    submit.pop();
    ref.pop();

//len_list: 18
//==============================


//==============================
    submit.push(9615);
    ref.push(9615);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(4811);
    ref.push(4811);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 136
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
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 142
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
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(348);
    ref.push(348);

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
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 16
//==============================


//==============================
    submit.push(6231);
    ref.push(6231);

//len_list: 17
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(5948);
    ref.push(5948);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 17
//==============================


//==============================
    submit.push(1769);
    ref.push(1769);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(7371);
    ref.push(7371);

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
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(7388);
    ref.push(7388);

//len_list: 18
//==============================


//==============================
    submit.push(7526);
    ref.push(7526);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(6955);
    ref.push(6955);

//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(7064);
    ref.push(7064);

//len_list: 18
//==============================


//==============================
    submit.push(456);
    ref.push(456);

//len_list: 19
//==============================


//==============================
    submit.push(9759);
    ref.push(9759);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 176
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
//num_require: 177
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
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 17
//==============================


//==============================
    submit.push(3304);
    ref.push(3304);

//len_list: 18
//==============================


//==============================
    submit.push(4189);
    ref.push(4189);

//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    submit.push(7809);
    ref.push(7809);

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
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 19
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 187
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
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 18
//==============================


//==============================
    submit.push(5049);
    ref.push(5049);

//len_list: 19
//==============================


//==============================
    submit.push(3921);
    ref.push(3921);

//len_list: 20
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 19
//==============================


//==============================
    submit.push(4458);
    ref.push(4458);

//len_list: 20
//==============================


//==============================
    submit.push(6437);
    ref.push(6437);

//len_list: 21
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 21
//==============================


//==============================
    submit.push(9678);
    ref.push(9678);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(6864);
    ref.push(6864);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(8537);
    ref.push(8537);

//len_list: 24
//==============================


//==============================
    submit.push(904);
    ref.push(904);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(9271);
    ref.push(9271);

//len_list: 26
//==============================


//==============================
    submit.push(3517);
    ref.push(3517);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(9831);
    ref.push(9831);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(5229);
    ref.push(5229);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(1349);
    ref.push(1349);

//len_list: 27
//==============================


//==============================
    submit.push(8081);
    ref.push(8081);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(1471);
    ref.push(1471);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(9587);
    ref.push(9587);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(3927);
    ref.push(3927);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 214
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
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(2775);
    ref.push(2775);

//len_list: 25
//==============================


//==============================
    submit.push(6907);
    ref.push(6907);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(4501);
    ref.push(4501);

//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(1316);
    ref.push(1316);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(7034);
    ref.push(7034);

//len_list: 23
//==============================


//==============================
    submit.push(6519);
    ref.push(6519);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(2969);
    ref.push(2969);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
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
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(3566);
    ref.push(3566);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(3242);
    ref.push(3242);

//len_list: 26
//==============================


//==============================
    submit.push(5918);
    ref.push(5918);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8653);
    ref.push(8653);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(9128);
    ref.push(9128);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(1165);
    ref.push(1165);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(8094);
    ref.push(8094);

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
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(3510);
    ref.push(3510);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(1261);
    ref.push(1261);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(1501);
    ref.push(1501);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(6930);
    ref.push(6930);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(8822);
    ref.push(8822);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    submit.push(6722);
    ref.push(6722);

//len_list: 24
//==============================


//==============================
    submit.push(5514);
    ref.push(5514);

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
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
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(5836);
    ref.push(5836);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(8370);
    ref.push(8370);

//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(9987);
    ref.push(9987);

//len_list: 23
//==============================


//==============================
    submit.push(594);
    ref.push(594);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
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
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 20
//==============================


//==============================
    submit.push(1275);
    ref.push(1275);

//len_list: 21
//==============================


//==============================
    submit.push(8657);
    ref.push(8657);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 21
//==============================


//==============================
    submit.push(4053);
    ref.push(4053);

//len_list: 22
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(8260);
    ref.push(8260);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(5609);
    ref.push(5609);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(7675);
    ref.push(7675);

//len_list: 23
//==============================


//==============================
    submit.push(5290);
    ref.push(5290);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    submit.push(3517);
    ref.push(3517);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(2003);
    ref.push(2003);

//len_list: 23
//==============================


//==============================
    submit.push(7157);
    ref.push(7157);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(9647);
    ref.push(9647);

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(104);
    ref.push(104);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 22
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 22
//==============================


//==============================
    submit.push(4295);
    ref.push(4295);

//len_list: 23
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 23
//==============================


//==============================
    submit.push(1994);
    ref.push(1994);

//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 24
//==============================


//==============================
    submit.push(3794);
    ref.push(3794);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(6309);
    ref.push(6309);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(7717);
    ref.push(7717);

//len_list: 26
//==============================


//==============================
    submit.push(4154);
    ref.push(4154);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
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
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(3145);
    ref.push(3145);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(6246);
    ref.push(6246);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(2319);
    ref.push(2319);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(5469);
    ref.push(5469);

//len_list: 29
//==============================


//==============================
    submit.push(4843);
    ref.push(4843);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(859);
    ref.push(859);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(1892);
    ref.push(1892);

//len_list: 31
//==============================


//==============================
    submit.push(4398);
    ref.push(4398);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5396);
    ref.push(5396);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(1370);
    ref.push(1370);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 360
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
//num_require: 361
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
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(6076);
    ref.push(6076);

//len_list: 30
//==============================


//==============================
    submit.push(8143);
    ref.push(8143);

//len_list: 31
//==============================


//==============================
    submit.push(1318);
    ref.push(1318);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 365
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
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(9763);
    ref.push(9763);

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(4463);
    ref.push(4463);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 384
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
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8398);
    ref.push(8398);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(37);
    ref.push(37);

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
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(3928);
    ref.push(3928);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(9472);
    ref.push(9472);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(3347);
    ref.push(3347);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(5594);
    ref.push(5594);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(687);
    ref.push(687);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(3181);
    ref.push(3181);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5428);
    ref.push(5428);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 422
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
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(3775);
    ref.push(3775);

//len_list: 32
//==============================


//==============================
    submit.push(5753);
    ref.push(5753);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(6183);
    ref.push(6183);

//len_list: 33
//==============================


//==============================
    submit.push(1182);
    ref.push(1182);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(9495);
    ref.push(9495);

//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(2145);
    ref.push(2145);

//len_list: 34
//==============================


//==============================
    submit.push(8798);
    ref.push(8798);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 431
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
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(8525);
    ref.push(8525);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(6964);
    ref.push(6964);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 442
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
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(2491);
    ref.push(2491);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(1181);
    ref.push(1181);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(1264);
    ref.push(1264);

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
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.back();
    ret_ref = ref.back();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.front();
    ret_ref = ref.front();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


}
