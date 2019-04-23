
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (285,1352)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(534);
    ref.push(534);

//len_list: 1
//==============================


//==============================
    submit.push(9143);
    ref.push(9143);

//len_list: 2
//==============================


//==============================
    submit.push(5441);
    ref.push(5441);

//len_list: 3
//==============================


//==============================
    submit.push(3460);
    ref.push(3460);

//len_list: 4
//==============================


//==============================
    submit.push(7167);
    ref.push(7167);

//len_list: 5
//==============================


//==============================
    submit.push(9230);
    ref.push(9230);

//len_list: 6
//==============================


//==============================
    submit.push(6249);
    ref.push(6249);

//len_list: 7
//==============================


//==============================
    submit.push(3250);
    ref.push(3250);

//len_list: 8
//==============================


//==============================
    submit.push(8479);
    ref.push(8479);

//len_list: 9
//==============================


//==============================
    submit.push(9714);
    ref.push(9714);

//len_list: 10
//==============================


//==============================
    submit.push(9595);
    ref.push(9595);

//len_list: 11
//==============================


//==============================
    submit.push(6793);
    ref.push(6793);

//len_list: 12
//==============================


//==============================
    submit.push(4100);
    ref.push(4100);

//len_list: 13
//==============================


//==============================
    submit.push(4626);
    ref.push(4626);

//len_list: 14
//==============================


//==============================
    submit.push(258);
    ref.push(258);

//len_list: 15
//==============================


//==============================
    submit.push(2748);
    ref.push(2748);

//len_list: 16
//==============================


//==============================
    submit.push(6261);
    ref.push(6261);

//len_list: 17
//==============================


//==============================
    submit.push(5572);
    ref.push(5572);

//len_list: 18
//==============================


//==============================
    submit.push(4886);
    ref.push(4886);

//len_list: 19
//==============================


//==============================
    submit.push(1119);
    ref.push(1119);

//len_list: 20
//==============================


//==============================
    submit.push(9029);
    ref.push(9029);

//len_list: 21
//==============================


//==============================
    submit.push(8788);
    ref.push(8788);

//len_list: 22
//==============================


//==============================
    submit.push(7296);
    ref.push(7296);

//len_list: 23
//==============================


//==============================
    submit.push(8346);
    ref.push(8346);

//len_list: 24
//==============================


//==============================
    submit.push(6868);
    ref.push(6868);

//len_list: 25
//==============================


//==============================
    submit.push(97);
    ref.push(97);

//len_list: 26
//==============================


//==============================
    submit.push(3490);
    ref.push(3490);

//len_list: 27
//==============================


//==============================
    submit.push(2350);
    ref.push(2350);

//len_list: 28
//==============================


//==============================
    submit.push(9560);
    ref.push(9560);

//len_list: 29
//==============================


//==============================
    submit.push(9387);
    ref.push(9387);

//len_list: 30
//==============================


//==============================
    submit.push(1781);
    ref.push(1781);

//len_list: 31
//==============================


//==============================
    submit.push(5793);
    ref.push(5793);

//len_list: 32
//==============================


//==============================
    submit.push(737);
    ref.push(737);

//len_list: 33
//==============================


//==============================
    submit.push(8315);
    ref.push(8315);

//len_list: 34
//==============================


//==============================
    submit.push(793);
    ref.push(793);

//len_list: 35
//==============================


//==============================
    submit.push(5449);
    ref.push(5449);

//len_list: 36
//==============================


//==============================
    submit.push(7363);
    ref.push(7363);

//len_list: 37
//==============================


//==============================
    submit.push(270);
    ref.push(270);

//len_list: 38
//==============================


//==============================
    submit.push(2121);
    ref.push(2121);

//len_list: 39
//==============================


//==============================
    submit.push(7156);
    ref.push(7156);

//len_list: 40
//==============================


//==============================
    submit.push(2558);
    ref.push(2558);

//len_list: 41
//==============================


//==============================
    submit.push(7436);
    ref.push(7436);

//len_list: 42
//==============================


//==============================
    submit.push(8301);
    ref.push(8301);

//len_list: 43
//==============================


//==============================
    submit.push(1609);
    ref.push(1609);

//len_list: 44
//==============================


//==============================
    submit.push(1323);
    ref.push(1323);

//len_list: 45
//==============================


//==============================
    submit.push(5689);
    ref.push(5689);

//len_list: 46
//==============================


//==============================
    submit.push(6139);
    ref.push(6139);

//len_list: 47
//==============================


//==============================
    submit.push(8590);
    ref.push(8590);

//len_list: 48
//==============================


//==============================
    submit.push(7150);
    ref.push(7150);

//len_list: 49
//==============================


//==============================
    submit.push(4174);
    ref.push(4174);

//len_list: 50
//==============================


//==============================
    submit.push(3706);
    ref.push(3706);

//len_list: 51
//==============================


//==============================
    submit.push(1958);
    ref.push(1958);

//len_list: 52
//==============================


//==============================
    submit.push(4303);
    ref.push(4303);

//len_list: 53
//==============================


//==============================
    submit.push(2851);
    ref.push(2851);

//len_list: 54
//==============================


//==============================
    submit.push(3474);
    ref.push(3474);

//len_list: 55
//==============================


//==============================
    submit.push(3788);
    ref.push(3788);

//len_list: 56
//==============================


//==============================
    submit.push(727);
    ref.push(727);

//len_list: 57
//==============================


//==============================
    submit.push(2846);
    ref.push(2846);

//len_list: 58
//==============================


//==============================
    submit.push(69);
    ref.push(69);

//len_list: 59
//==============================


//==============================
    submit.push(3110);
    ref.push(3110);

//len_list: 60
//==============================


//==============================
    submit.push(4104);
    ref.push(4104);

//len_list: 61
//==============================


//==============================
    submit.push(6366);
    ref.push(6366);

//len_list: 62
//==============================


//==============================
    submit.push(2431);
    ref.push(2431);

//len_list: 63
//==============================


//==============================
    submit.push(4431);
    ref.push(4431);

//len_list: 64
//==============================


//==============================
    submit.push(5619);
    ref.push(5619);

//len_list: 65
//==============================


//==============================
    submit.push(8268);
    ref.push(8268);

//len_list: 66
//==============================


//==============================
    submit.push(9967);
    ref.push(9967);

//len_list: 67
//==============================


//==============================
    submit.push(4521);
    ref.push(4521);

//len_list: 68
//==============================


//==============================
    submit.push(1134);
    ref.push(1134);

//len_list: 69
//==============================


//==============================
    submit.push(4377);
    ref.push(4377);

//len_list: 70
//==============================


//==============================
    submit.push(1663);
    ref.push(1663);

//len_list: 71
//==============================


//==============================
    submit.push(6433);
    ref.push(6433);

//len_list: 72
//==============================


//==============================
    submit.push(1006);
    ref.push(1006);

//len_list: 73
//==============================


//==============================
    submit.push(9738);
    ref.push(9738);

//len_list: 74
//==============================


//==============================
    submit.push(9719);
    ref.push(9719);

//len_list: 75
//==============================


//==============================
    submit.push(5411);
    ref.push(5411);

//len_list: 76
//==============================


//==============================
    submit.push(9318);
    ref.push(9318);

//len_list: 77
//==============================


//==============================
    submit.push(3142);
    ref.push(3142);

//len_list: 78
//==============================


//==============================
    submit.push(4761);
    ref.push(4761);

//len_list: 79
//==============================


//==============================
    submit.push(5139);
    ref.push(5139);

//len_list: 80
//==============================


//==============================
    submit.push(4644);
    ref.push(4644);

//len_list: 81
//==============================


//==============================
    submit.push(733);
    ref.push(733);

//len_list: 82
//==============================


//==============================
    submit.push(877);
    ref.push(877);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(2319);
    ref.push(2319);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(7067);
    ref.push(7067);

//len_list: 83
//==============================


//==============================
    submit.push(2965);
    ref.push(2965);

//len_list: 84
//==============================


//==============================
    submit.push(7565);
    ref.push(7565);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(590);
    ref.push(590);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3627);
    ref.push(3627);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(6561);
    ref.push(6561);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(2432);
    ref.push(2432);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(972);
    ref.push(972);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(549);
    ref.push(549);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(8420);
    ref.push(8420);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(7605);
    ref.push(7605);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(9191);
    ref.push(9191);

//len_list: 85
//==============================


//==============================
    submit.push(1698);
    ref.push(1698);

//len_list: 86
//==============================


//==============================
    submit.push(4220);
    ref.push(4220);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 34
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(7735);
    ref.push(7735);

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
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6755);
    ref.push(6755);

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(2508);
    ref.push(2508);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(2437);
    ref.push(2437);

//len_list: 86
//==============================


//==============================
    submit.push(9225);
    ref.push(9225);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(8125);
    ref.push(8125);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
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
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(7448);
    ref.push(7448);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(2932);
    ref.push(2932);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(6226);
    ref.push(6226);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 59
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
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(6333);
    ref.push(6333);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(6150);
    ref.push(6150);

//len_list: 83
//==============================


//==============================
    submit.push(6048);
    ref.push(6048);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5770);
    ref.push(5770);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5327);
    ref.push(5327);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3163);
    ref.push(3163);

//len_list: 84
//==============================


//==============================
    submit.push(605);
    ref.push(605);

//len_list: 85
//==============================


//==============================
    submit.push(5497);
    ref.push(5497);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(6298);
    ref.push(6298);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(7928);
    ref.push(7928);

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(5936);
    ref.push(5936);

//len_list: 88
//==============================


//==============================
    submit.push(2223);
    ref.push(2223);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
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
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(3926);
    ref.push(3926);

//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

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
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(2235);
    ref.push(2235);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(7448);
    ref.push(7448);

//len_list: 87
//==============================


//==============================
    submit.push(6833);
    ref.push(6833);

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
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(2424);
    ref.push(2424);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(5839);
    ref.push(5839);

//len_list: 88
//==============================


//==============================
    submit.push(8582);
    ref.push(8582);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(308);
    ref.push(308);

//len_list: 87
//==============================


//==============================
    submit.push(9702);
    ref.push(9702);

//len_list: 88
//==============================


//==============================
    submit.push(2434);
    ref.push(2434);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(2660);
    ref.push(2660);

//len_list: 90
//==============================


//==============================
    submit.push(7649);
    ref.push(7649);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(3192);
    ref.push(3192);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(2185);
    ref.push(2185);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(3681);
    ref.push(3681);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(4208);
    ref.push(4208);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
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
    submit.push(6983);
    ref.push(6983);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(1611);
    ref.push(1611);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(7050);
    ref.push(7050);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(4592);
    ref.push(4592);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    submit.push(7883);
    ref.push(7883);

//len_list: 88
//==============================


//==============================
    submit.push(8045);
    ref.push(8045);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(2839);
    ref.push(2839);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 144
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
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(6778);
    ref.push(6778);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 146
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
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(8159);
    ref.push(8159);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
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
    submit.push(3170);
    ref.push(3170);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5509);
    ref.push(5509);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(6844);
    ref.push(6844);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(6309);
    ref.push(6309);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(1174);
    ref.push(1174);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(1406);
    ref.push(1406);

//len_list: 89
//==============================


//==============================
    submit.push(654);
    ref.push(654);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 188
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
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8490);
    ref.push(8490);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
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
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    submit.push(3098);
    ref.push(3098);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(9805);
    ref.push(9805);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 209
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(7368);
    ref.push(7368);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(8263);
    ref.push(8263);

//len_list: 86
//==============================


//==============================
    submit.push(9910);
    ref.push(9910);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(1830);
    ref.push(1830);

//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(2669);
    ref.push(2669);

//len_list: 84
//==============================


//==============================
    submit.push(2457);
    ref.push(2457);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(4343);
    ref.push(4343);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(4261);
    ref.push(4261);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(9744);
    ref.push(9744);

//len_list: 83
//==============================


//==============================
    submit.push(2979);
    ref.push(2979);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(9229);
    ref.push(9229);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(7565);
    ref.push(7565);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(3993);
    ref.push(3993);

//len_list: 83
//==============================


//==============================
    submit.push(240);
    ref.push(240);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(3812);
    ref.push(3812);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(6871);
    ref.push(6871);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9088);
    ref.push(9088);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(7605);
    ref.push(7605);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(9359);
    ref.push(9359);

//len_list: 89
//==============================


//==============================
    submit.push(5259);
    ref.push(5259);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(9954);
    ref.push(9954);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(8335);
    ref.push(8335);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(324);
    ref.push(324);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.push(4054);
    ref.push(4054);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(4019);
    ref.push(4019);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(2245);
    ref.push(2245);

//len_list: 94
//==============================


//==============================
    submit.push(4549);
    ref.push(4549);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(918);
    ref.push(918);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(8492);
    ref.push(8492);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(1910);
    ref.push(1910);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(4064);
    ref.push(4064);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5691);
    ref.push(5691);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7098);
    ref.push(7098);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(944);
    ref.push(944);

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
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6525);
    ref.push(6525);

//len_list: 101
//==============================


//==============================
    submit.push(5621);
    ref.push(5621);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(7066);
    ref.push(7066);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(6029);
    ref.push(6029);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 286
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(3109);
    ref.push(3109);

//len_list: 100
//==============================


//==============================
    submit.push(8890);
    ref.push(8890);

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
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6406);
    ref.push(6406);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(6119);
    ref.push(6119);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(8843);
    ref.push(8843);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1093);
    ref.push(1093);

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
//num_require: 304
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
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7530);
    ref.push(7530);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 307
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
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(4346);
    ref.push(4346);

//len_list: 101
//==============================


//==============================
    submit.push(672);
    ref.push(672);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 309
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
    submit.push(3108);
    ref.push(3108);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 314
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(8046);
    ref.push(8046);

//len_list: 96
//==============================


//==============================
    submit.push(2230);
    ref.push(2230);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 327
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
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(6010);
    ref.push(6010);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(4913);
    ref.push(4913);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6540);
    ref.push(6540);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(7092);
    ref.push(7092);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(3337);
    ref.push(3337);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9529);
    ref.push(9529);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
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
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(5893);
    ref.push(5893);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9688);
    ref.push(9688);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(240);
    ref.push(240);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(5672);
    ref.push(5672);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(2427);
    ref.push(2427);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(3688);
    ref.push(3688);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(3173);
    ref.push(3173);

//len_list: 100
//==============================


//==============================
    submit.push(3212);
    ref.push(3212);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
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
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(2747);
    ref.push(2747);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 373
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
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 375
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(1675);
    ref.push(1675);

//len_list: 99
//==============================


//==============================
    submit.push(4819);
    ref.push(4819);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(8154);
    ref.push(8154);

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
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(9105);
    ref.push(9105);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2793);
    ref.push(2793);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 389
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(575);
    ref.push(575);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(9748);
    ref.push(9748);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(3653);
    ref.push(3653);

//len_list: 98
//==============================


//==============================
    submit.push(3271);
    ref.push(3271);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(192);
    ref.push(192);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6423);
    ref.push(6423);

//len_list: 101
//==============================


//==============================
    submit.push(571);
    ref.push(571);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 410
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
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(617);
    ref.push(617);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(1613);
    ref.push(1613);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 417
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
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1285);
    ref.push(1285);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(8533);
    ref.push(8533);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(9792);
    ref.push(9792);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 430
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
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(29);
    ref.push(29);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 432
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(7359);
    ref.push(7359);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(7015);
    ref.push(7015);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(249);
    ref.push(249);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(2904);
    ref.push(2904);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3932);
    ref.push(3932);

//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(737);
    ref.push(737);

//len_list: 101
//==============================


//==============================
    submit.push(2629);
    ref.push(2629);

//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    submit.push(1319);
    ref.push(1319);

//len_list: 102
//==============================


//==============================
    submit.push(9765);
    ref.push(9765);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(2308);
    ref.push(2308);

//len_list: 104
//==============================


//==============================
    submit.push(7068);
    ref.push(7068);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(2636);
    ref.push(2636);

//len_list: 105
//==============================


//==============================
    submit.push(1755);
    ref.push(1755);

//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(3755);
    ref.push(3755);

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
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(5354);
    ref.push(5354);

//len_list: 107
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 106
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 464
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
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(3962);
    ref.push(3962);

//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    submit.push(2299);
    ref.push(2299);

//len_list: 105
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 104
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 474
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
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(1981);
    ref.push(1981);

//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(7168);
    ref.push(7168);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 487
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 488
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
    submit.push(5240);
    ref.push(5240);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6397);
    ref.push(6397);

//len_list: 96
//==============================


//==============================
    submit.push(9014);
    ref.push(9014);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(3110);
    ref.push(3110);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6529);
    ref.push(6529);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 504
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
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(8269);
    ref.push(8269);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6930);
    ref.push(6930);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(5456);
    ref.push(5456);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(2649);
    ref.push(2649);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(6668);
    ref.push(6668);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(3880);
    ref.push(3880);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.push(922);
    ref.push(922);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(6413);
    ref.push(6413);

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9064);
    ref.push(9064);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(7681);
    ref.push(7681);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(9328);
    ref.push(9328);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(580);
    ref.push(580);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6330);
    ref.push(6330);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(6055);
    ref.push(6055);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(3118);
    ref.push(3118);

//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(5303);
    ref.push(5303);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.push(9272);
    ref.push(9272);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.push(2988);
    ref.push(2988);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    submit.push(5249);
    ref.push(5249);

//len_list: 91
//==============================


//==============================
    submit.push(3515);
    ref.push(3515);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(9468);
    ref.push(9468);

//len_list: 92
//==============================


//==============================
    submit.push(5171);
    ref.push(5171);

//len_list: 93
//==============================


//==============================
    submit.push(2196);
    ref.push(2196);

//len_list: 94
//==============================


//==============================
    submit.push(5639);
    ref.push(5639);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(4341);
    ref.push(4341);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(533);
    ref.push(533);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    submit.push(3152);
    ref.push(3152);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(9487);
    ref.push(9487);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 602
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
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(2460);
    ref.push(2460);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(7765);
    ref.push(7765);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(1873);
    ref.push(1873);

//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(3433);
    ref.push(3433);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(7160);
    ref.push(7160);

//len_list: 97
//==============================


//==============================
    submit.push(3661);
    ref.push(3661);

//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    submit.push(9250);
    ref.push(9250);

//len_list: 98
//==============================


//==============================
    submit.push(9210);
    ref.push(9210);

//len_list: 99
//==============================


//==============================
    submit.push(155);
    ref.push(155);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    submit.push(7475);
    ref.push(7475);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 619
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
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5405);
    ref.push(5405);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(7832);
    ref.push(7832);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(6393);
    ref.push(6393);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(5681);
    ref.push(5681);

//len_list: 101
//==============================


//==============================
    submit.push(1261);
    ref.push(1261);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 639
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
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(5077);
    ref.push(5077);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 651
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 658
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
    submit.pop();
    ref.pop();

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(7401);
    ref.push(7401);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    submit.push(1478);
    ref.push(1478);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(6658);
    ref.push(6658);

//len_list: 94
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(6875);
    ref.push(6875);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(7279);
    ref.push(7279);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(1956);
    ref.push(1956);

//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    submit.push(7397);
    ref.push(7397);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(6878);
    ref.push(6878);

//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(3981);
    ref.push(3981);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(9061);
    ref.push(9061);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(2525);
    ref.push(2525);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(8391);
    ref.push(8391);

//len_list: 100
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(2034);
    ref.push(2034);

//len_list: 100
//==============================


//==============================
    submit.push(5555);
    ref.push(5555);

//len_list: 101
//==============================


//==============================
    submit.push(2069);
    ref.push(2069);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(6524);
    ref.push(6524);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(5415);
    ref.push(5415);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(6060);
    ref.push(6060);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(5097);
    ref.push(5097);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(842);
    ref.push(842);

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
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 725
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
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(1380);
    ref.push(1380);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    submit.push(7255);
    ref.push(7255);

//len_list: 103
//==============================


//==============================
    submit.push(5197);
    ref.push(5197);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(1248);
    ref.push(1248);

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
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 735
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3619);
    ref.push(3619);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 737
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
//num_require: 738
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 748
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 95
//==============================


//==============================
    submit.push(4207);
    ref.push(4207);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(4703);
    ref.push(4703);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(5730);
    ref.push(5730);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(4897);
    ref.push(4897);

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
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(6657);
    ref.push(6657);

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
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(2278);
    ref.push(2278);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


}
