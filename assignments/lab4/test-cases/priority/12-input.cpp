
    #define CATCH_CONFIG_FAST_COMPILE
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (72,1534)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true,72> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(6394);
    ref.push(6394);

//len_list: 1
//==============================


//==============================
    submit.push(4242);
    ref.push(4242);

//len_list: 2
//==============================


//==============================
    submit.push(4034);
    ref.push(4034);

//len_list: 3
//==============================


//==============================
    submit.push(535);
    ref.push(535);

//len_list: 4
//==============================


//==============================
    submit.push(8019);
    ref.push(8019);

//len_list: 5
//==============================


//==============================
    submit.push(1496);
    ref.push(1496);

//len_list: 6
//==============================


//==============================
    submit.push(9384);
    ref.push(9384);

//len_list: 7
//==============================


//==============================
    submit.push(9755);
    ref.push(9755);

//len_list: 8
//==============================


//==============================
    submit.push(3434);
    ref.push(3434);

//len_list: 9
//==============================


//==============================
    submit.push(8170);
    ref.push(8170);

//len_list: 10
//==============================


//==============================
    submit.push(9392);
    ref.push(9392);

//len_list: 11
//==============================


//==============================
    submit.push(2707);
    ref.push(2707);

//len_list: 12
//==============================


//==============================
    submit.push(9135);
    ref.push(9135);

//len_list: 13
//==============================


//==============================
    submit.push(9342);
    ref.push(9342);

//len_list: 14
//==============================


//==============================
    submit.push(6094);
    ref.push(6094);

//len_list: 15
//==============================


//==============================
    submit.push(701);
    ref.push(701);

//len_list: 16
//==============================


//==============================
    submit.push(698);
    ref.push(698);

//len_list: 17
//==============================


//==============================
    submit.push(6310);
    ref.push(6310);

//len_list: 18
//==============================


//==============================
    submit.push(6069);
    ref.push(6069);

//len_list: 19
//==============================


//==============================
    submit.push(2147);
    ref.push(2147);

//len_list: 20
//==============================


//==============================
    submit.push(4714);
    ref.push(4714);

//len_list: 21
//==============================


//==============================
    submit.push(7706);
    ref.push(7706);

//len_list: 22
//==============================


//==============================
    submit.push(3552);
    ref.push(3552);

//len_list: 23
//==============================


//==============================
    submit.push(7374);
    ref.push(7374);

//len_list: 24
//==============================


//==============================
    submit.push(2523);
    ref.push(2523);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(4857);
    ref.push(4857);

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(4770);
    ref.push(4770);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(6159);
    ref.push(6159);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(1629);
    ref.push(1629);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 9
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
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(4596);
    ref.push(4596);

//len_list: 26
//==============================


//==============================
    submit.push(8183);
    ref.push(8183);

//len_list: 27
//==============================


//==============================
    submit.push(1104);
    ref.push(1104);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(7029);
    ref.push(7029);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 15
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
    submit.push(1470);
    ref.push(1470);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(3631);
    ref.push(3631);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(4681);
    ref.push(4681);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(7572);
    ref.push(7572);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(2808);
    ref.push(2808);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8333);
    ref.push(8333);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
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
    submit.push(5636);
    ref.push(5636);

//len_list: 25
//==============================


//==============================
    submit.push(7085);
    ref.push(7085);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(4947);
    ref.push(4947);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(2081);
    ref.push(2081);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(1485);
    ref.push(1485);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(7078);
    ref.push(7078);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(1134);
    ref.push(1134);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(5479);
    ref.push(5479);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(3677);
    ref.push(3677);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(1993);
    ref.push(1993);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    submit.push(972);
    ref.push(972);

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(2286);
    ref.push(2286);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(6983);
    ref.push(6983);

//len_list: 27
//==============================


//==============================
    submit.push(4513);
    ref.push(4513);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(9955);
    ref.push(9955);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(5008);
    ref.push(5008);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(6673);
    ref.push(6673);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(3115);
    ref.push(3115);

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
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(6581);
    ref.push(6581);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(640);
    ref.push(640);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(122);
    ref.push(122);

//len_list: 27
//==============================


//==============================
    submit.push(4651);
    ref.push(4651);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 95
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
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(357);
    ref.push(357);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(6203);
    ref.push(6203);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(6298);
    ref.push(6298);

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
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(5407);
    ref.push(5407);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(5463);
    ref.push(5463);

//len_list: 28
//==============================


//==============================
    submit.push(2683);
    ref.push(2683);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(636);
    ref.push(636);

//len_list: 29
//==============================


//==============================
    submit.push(8449);
    ref.push(8449);

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
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(3709);
    ref.push(3709);

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
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(6532);
    ref.push(6532);

//len_list: 30
//==============================


//==============================
    submit.push(1422);
    ref.push(1422);

//len_list: 31
//==============================


//==============================
    submit.push(2176);
    ref.push(2176);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(6049);
    ref.push(6049);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(7804);
    ref.push(7804);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(1131);
    ref.push(1131);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 126
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
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(159);
    ref.push(159);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 131
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
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(8474);
    ref.push(8474);

//len_list: 31
//==============================


//==============================
    submit.push(7144);
    ref.push(7144);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
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
//num_require: 139
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
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(5793);
    ref.push(5793);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(4871);
    ref.push(4871);

//len_list: 29
//==============================


//==============================
    submit.push(9522);
    ref.push(9522);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(1857);
    ref.push(1857);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(9914);
    ref.push(9914);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(8257);
    ref.push(8257);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(3709);
    ref.push(3709);

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
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(516);
    ref.push(516);

//len_list: 30
//==============================


//==============================
    submit.push(9225);
    ref.push(9225);

//len_list: 31
//==============================


//==============================
    submit.push(9642);
    ref.push(9642);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(6166);
    ref.push(6166);

//len_list: 33
//==============================


//==============================
    submit.push(2328);
    ref.push(2328);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 164
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
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(9945);
    ref.push(9945);

//len_list: 33
//==============================


//==============================
    submit.push(5928);
    ref.push(5928);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(9004);
    ref.push(9004);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4587);
    ref.push(4587);

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(6604);
    ref.push(6604);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5858);
    ref.push(5858);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(7784);
    ref.push(7784);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(9099);
    ref.push(9099);

//len_list: 33
//==============================


//==============================
    submit.push(6703);
    ref.push(6703);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 181
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
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(4530);
    ref.push(4530);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(8657);
    ref.push(8657);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(1148);
    ref.push(1148);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 191
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
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(3078);
    ref.push(3078);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
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
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(4235);
    ref.push(4235);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 210
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
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(2905);
    ref.push(2905);

//len_list: 30
//==============================


//==============================
    submit.push(915);
    ref.push(915);

//len_list: 31
//==============================


//==============================
    submit.push(9519);
    ref.push(9519);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(446);
    ref.push(446);

//len_list: 32
//==============================


//==============================
    submit.push(3875);
    ref.push(3875);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(8272);
    ref.push(8272);

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
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(7057);
    ref.push(7057);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(7487);
    ref.push(7487);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4782);
    ref.push(4782);

//len_list: 35
//==============================


//==============================
    submit.push(6746);
    ref.push(6746);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(4384);
    ref.push(4384);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 235
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(9009);
    ref.push(9009);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(6403);
    ref.push(6403);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 247
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
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(7335);
    ref.push(7335);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 258
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
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(2518);
    ref.push(2518);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(7130);
    ref.push(7130);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(7079);
    ref.push(7079);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(5246);
    ref.push(5246);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(746);
    ref.push(746);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(8907);
    ref.push(8907);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(2470);
    ref.push(2470);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(2834);
    ref.push(2834);

//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(2765);
    ref.push(2765);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(934);
    ref.push(934);

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(7498);
    ref.push(7498);

//len_list: 26
//==============================


//==============================
    submit.push(4267);
    ref.push(4267);

//len_list: 27
//==============================


//==============================
    submit.push(6850);
    ref.push(6850);

//len_list: 28
//==============================


//==============================
    submit.push(6700);
    ref.push(6700);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(2701);
    ref.push(2701);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(9367);
    ref.push(9367);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(4838);
    ref.push(4838);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(9836);
    ref.push(9836);

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
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 296
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
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(5339);
    ref.push(5339);

//len_list: 30
//==============================


//==============================
    submit.push(2551);
    ref.push(2551);

//len_list: 31
//==============================


//==============================
    submit.push(7226);
    ref.push(7226);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5379);
    ref.push(5379);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(1480);
    ref.push(1480);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 313
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
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(8347);
    ref.push(8347);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(7930);
    ref.push(7930);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8784);
    ref.push(8784);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
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
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(1518);
    ref.push(1518);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(2027);
    ref.push(2027);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(7450);
    ref.push(7450);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(5195);
    ref.push(5195);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
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
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(4627);
    ref.push(4627);

//len_list: 28
//==============================


//==============================
    submit.push(3429);
    ref.push(3429);

//len_list: 29
//==============================


//==============================
    submit.push(2976);
    ref.push(2976);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(999);
    ref.push(999);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(4042);
    ref.push(4042);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(1708);
    ref.push(1708);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(705);
    ref.push(705);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(5471);
    ref.push(5471);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(3538);
    ref.push(3538);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(5457);
    ref.push(5457);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(9285);
    ref.push(9285);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(9022);
    ref.push(9022);

//len_list: 34
//==============================


//==============================
    submit.push(374);
    ref.push(374);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(7890);
    ref.push(7890);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(9517);
    ref.push(9517);

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
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(9077);
    ref.push(9077);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(3664);
    ref.push(3664);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(935);
    ref.push(935);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
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
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(7065);
    ref.push(7065);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(2847);
    ref.push(2847);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(4210);
    ref.push(4210);

//len_list: 32
//==============================


//==============================
    submit.push(9627);
    ref.push(9627);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(2529);
    ref.push(2529);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 400
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
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(5978);
    ref.push(5978);

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
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(824);
    ref.push(824);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 408
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
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(4518);
    ref.push(4518);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(8922);
    ref.push(8922);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(5048);
    ref.push(5048);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(1471);
    ref.push(1471);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 428
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
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(2475);
    ref.push(2475);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(1651);
    ref.push(1651);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(2237);
    ref.push(2237);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8904);
    ref.push(8904);

//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(5300);
    ref.push(5300);

//len_list: 28
//==============================


//==============================
    submit.push(7206);
    ref.push(7206);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(2483);
    ref.push(2483);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    submit.push(5496);
    ref.push(5496);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(9062);
    ref.push(9062);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(4843);
    ref.push(4843);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 461
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
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(3275);
    ref.push(3275);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(8056);
    ref.push(8056);

//len_list: 26
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(2545);
    ref.push(2545);

//len_list: 27
//==============================


//==============================
    submit.push(427);
    ref.push(427);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(6420);
    ref.push(6420);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(1087);
    ref.push(1087);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8613);
    ref.push(8613);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(133);
    ref.push(133);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(9138);
    ref.push(9138);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(1612);
    ref.push(1612);

//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(6964);
    ref.push(6964);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 493
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
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 498
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
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    submit.push(5627);
    ref.push(5627);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(131);
    ref.push(131);

//len_list: 30
//==============================


//==============================
    submit.push(5966);
    ref.push(5966);

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
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(5104);
    ref.push(5104);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(4518);
    ref.push(4518);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 503
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
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
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
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(849);
    ref.push(849);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(4789);
    ref.push(4789);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(7407);
    ref.push(7407);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(7915);
    ref.push(7915);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(8084);
    ref.push(8084);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(5848);
    ref.push(5848);

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
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 519
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
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(8733);
    ref.push(8733);

//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(791);
    ref.push(791);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(8072);
    ref.push(8072);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(946);
    ref.push(946);

//len_list: 28
//==============================


//==============================
    submit.push(5345);
    ref.push(5345);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(1769);
    ref.push(1769);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(928);
    ref.push(928);

//len_list: 31
//==============================


//==============================
    submit.push(7781);
    ref.push(7781);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(52);
    ref.push(52);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(3250);
    ref.push(3250);

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 546
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
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(5434);
    ref.push(5434);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(6443);
    ref.push(6443);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(6294);
    ref.push(6294);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(2073);
    ref.push(2073);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(160);
    ref.push(160);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.push(3797);
    ref.push(3797);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(6175);
    ref.push(6175);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    submit.push(8507);
    ref.push(8507);

//len_list: 28
//==============================


//==============================
    submit.push(4338);
    ref.push(4338);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(6981);
    ref.push(6981);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(4101);
    ref.push(4101);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(5783);
    ref.push(5783);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(832);
    ref.push(832);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(4884);
    ref.push(4884);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(9335);
    ref.push(9335);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(3115);
    ref.push(3115);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(871);
    ref.push(871);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 615
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
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4405);
    ref.push(4405);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 620
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
//num_require: 621
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
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(9554);
    ref.push(9554);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 631
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
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(1539);
    ref.push(1539);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(9690);
    ref.push(9690);

//len_list: 30
//==============================


//==============================
    submit.push(3519);
    ref.push(3519);

//len_list: 31
//==============================


//==============================
    submit.push(4888);
    ref.push(4888);

//len_list: 32
//==============================


//==============================
    submit.push(5481);
    ref.push(5481);

//len_list: 33
//==============================


//==============================
    submit.push(7949);
    ref.push(7949);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(1611);
    ref.push(1611);

//len_list: 35
//==============================


//==============================
    submit.push(5320);
    ref.push(5320);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.push(6715);
    ref.push(6715);

//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(8503);
    ref.push(8503);

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(7950);
    ref.push(7950);

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
//num_require: 645
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
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(1153);
    ref.push(1153);

//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 650
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
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 29
//==============================


//==============================
    submit.push(9400);
    ref.push(9400);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(3146);
    ref.push(3146);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(620);
    ref.push(620);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(1106);
    ref.push(1106);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(6540);
    ref.push(6540);

//len_list: 34
//==============================


//==============================
    submit.push(2920);
    ref.push(2920);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(341);
    ref.push(341);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(1586);
    ref.push(1586);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
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
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(8166);
    ref.push(8166);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(7659);
    ref.push(7659);

//len_list: 36
//==============================


//==============================
    submit.push(9528);
    ref.push(9528);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(7535);
    ref.push(7535);

//len_list: 36
//==============================


//==============================
    submit.push(1383);
    ref.push(1383);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(6847);
    ref.push(6847);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.push(7960);
    ref.push(7960);

//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(463);
    ref.push(463);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(3036);
    ref.push(3036);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(3969);
    ref.push(3969);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(7336);
    ref.push(7336);

//len_list: 40
//==============================


//==============================
    submit.push(5553);
    ref.push(5553);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(3520);
    ref.push(3520);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 715
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
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(6255);
    ref.push(6255);

//len_list: 42
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
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
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(6673);
    ref.push(6673);

//len_list: 40
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 39
//==============================


//==============================
    submit.push(3087);
    ref.push(3087);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 721
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
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 39
//==============================


//==============================
    submit.push(5964);
    ref.push(5964);

//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(4903);
    ref.push(4903);

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
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 40
//==============================


//==============================
    submit.push(6428);
    ref.push(6428);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    submit.push(3208);
    ref.push(3208);

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
    submit.push(8942);
    ref.push(8942);

//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 41
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 734
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
//num_require: 735
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
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 738
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
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(257);
    ref.push(257);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 37
//==============================


//==============================
    submit.push(4863);
    ref.push(4863);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(7290);
    ref.push(7290);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.push(4568);
    ref.push(4568);

//len_list: 38
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.push(5825);
    ref.push(5825);

//len_list: 39
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 38
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 37
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(5486);
    ref.push(5486);

//len_list: 36
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 36
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(440);
    ref.push(440);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.push(5057);
    ref.push(5057);

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
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
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
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 780
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
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.push(8827);
    ref.push(8827);

//len_list: 33
//==============================


//==============================
    submit.push(5855);
    ref.push(5855);

//len_list: 34
//==============================


//==============================
    submit.push(7105);
    ref.push(7105);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

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
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 784
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
//num_require: 785
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
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(3972);
    ref.push(3972);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(1966);
    ref.push(1966);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(7200);
    ref.push(7200);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(552);
    ref.push(552);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(5814);
    ref.push(5814);

//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.push(4093);
    ref.push(4093);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 34
//==============================


//==============================
    submit.push(2938);
    ref.push(2938);

//len_list: 35
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 35
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 809
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
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 34
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 33
//==============================


//==============================
    submit.push(6655);
    ref.push(6655);

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
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(377);
    ref.push(377);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(8011);
    ref.push(8011);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 823
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
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(8545);
    ref.push(8545);

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
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(237);
    ref.push(237);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(7959);
    ref.push(7959);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 24
//==============================


//==============================
    submit.push(9345);
    ref.push(9345);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(5885);
    ref.push(5885);

//len_list: 26
//==============================


//==============================
    submit.push(4213);
    ref.push(4213);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 846
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
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 848
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
    submit.push(3209);
    ref.push(3209);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(8387);
    ref.push(8387);

//len_list: 26
//==============================


//==============================
    submit.push(4907);
    ref.push(4907);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 857
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
    submit.push(4752);
    ref.push(4752);

//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 25
//==============================


//==============================
    submit.push(3895);
    ref.push(3895);

//len_list: 26
//==============================


//==============================
    submit.push(8337);
    ref.push(8337);

//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(8420);
    ref.push(8420);

//len_list: 27
//==============================


//==============================
    submit.push(8607);
    ref.push(8607);

//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.push(9499);
    ref.push(9499);

//len_list: 28
//==============================


//==============================
    submit.push(7380);
    ref.push(7380);

//len_list: 29
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 28
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 27
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 27
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 26
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 26
//==============================


//==============================
    submit.push(4572);
    ref.push(4572);

//len_list: 27
//==============================


//==============================
    submit.push(2478);
    ref.push(2478);

//len_list: 28
//==============================


//==============================
    submit.push(6287);
    ref.push(6287);

//len_list: 29
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 29
//==============================


//==============================
    submit.push(5373);
    ref.push(5373);

//len_list: 30
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(5168);
    ref.push(5168);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(3918);
    ref.push(3918);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(4080);
    ref.push(4080);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.push(6443);
    ref.push(6443);

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
    submit.push(7517);
    ref.push(7517);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    submit.push(8180);
    ref.push(8180);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 30
//==============================


//==============================
    submit.push(2849);
    ref.push(2849);

//len_list: 31
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(4062);
    ref.push(4062);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 31
//==============================


//==============================
    submit.push(995);
    ref.push(995);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 30
//==============================


//==============================
    submit.push(7277);
    ref.push(7277);

//len_list: 31
//==============================


//==============================
    submit.push(3525);
    ref.push(3525);

//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(4931);
    ref.push(4931);

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
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 32
//==============================


//==============================
    submit.push(6609);
    ref.push(6609);

//len_list: 33
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 33
//==============================


}
