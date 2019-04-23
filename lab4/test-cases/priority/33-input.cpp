
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (81,1547)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(2424);
    ref.push(2424);

//len_list: 1
//==============================


//==============================
    submit.push(327);
    ref.push(327);

//len_list: 2
//==============================


//==============================
    submit.push(760);
    ref.push(760);

//len_list: 3
//==============================


//==============================
    submit.push(6117);
    ref.push(6117);

//len_list: 4
//==============================


//==============================
    submit.push(6591);
    ref.push(6591);

//len_list: 5
//==============================


//==============================
    submit.push(2133);
    ref.push(2133);

//len_list: 6
//==============================


//==============================
    submit.push(2150);
    ref.push(2150);

//len_list: 7
//==============================


//==============================
    submit.push(288);
    ref.push(288);

//len_list: 8
//==============================


//==============================
    submit.push(7494);
    ref.push(7494);

//len_list: 9
//==============================


//==============================
    submit.push(6159);
    ref.push(6159);

//len_list: 10
//==============================


//==============================
    submit.push(4896);
    ref.push(4896);

//len_list: 11
//==============================


//==============================
    submit.push(8875);
    ref.push(8875);

//len_list: 12
//==============================


//==============================
    submit.push(9929);
    ref.push(9929);

//len_list: 13
//==============================


//==============================
    submit.push(3555);
    ref.push(3555);

//len_list: 14
//==============================


//==============================
    submit.push(5468);
    ref.push(5468);

//len_list: 15
//==============================


//==============================
    submit.push(7413);
    ref.push(7413);

//len_list: 16
//==============================


//==============================
    submit.push(1857);
    ref.push(1857);

//len_list: 17
//==============================


//==============================
    submit.push(7320);
    ref.push(7320);

//len_list: 18
//==============================


//==============================
    submit.push(3782);
    ref.push(3782);

//len_list: 19
//==============================


//==============================
    submit.push(102);
    ref.push(102);

//len_list: 20
//==============================


//==============================
    submit.push(2090);
    ref.push(2090);

//len_list: 21
//==============================


//==============================
    submit.push(5190);
    ref.push(5190);

//len_list: 22
//==============================


//==============================
    submit.push(863);
    ref.push(863);

//len_list: 23
//==============================


//==============================
    submit.push(6909);
    ref.push(6909);

//len_list: 24
//==============================


//==============================
    submit.push(7681);
    ref.push(7681);

//len_list: 25
//==============================


//==============================
    submit.push(2136);
    ref.push(2136);

//len_list: 26
//==============================


//==============================
    submit.push(5643);
    ref.push(5643);

//len_list: 27
//==============================


//==============================
    submit.push(1370);
    ref.push(1370);

//len_list: 28
//==============================


//==============================
    submit.push(3951);
    ref.push(3951);

//len_list: 29
//==============================


//==============================
    submit.push(4049);
    ref.push(4049);

//len_list: 30
//==============================


//==============================
    submit.push(2442);
    ref.push(2442);

//len_list: 31
//==============================


//==============================
    submit.push(1094);
    ref.push(1094);

//len_list: 32
//==============================


//==============================
    submit.push(380);
    ref.push(380);

//len_list: 33
//==============================


//==============================
    submit.push(7123);
    ref.push(7123);

//len_list: 34
//==============================


//==============================
    submit.push(3743);
    ref.push(3743);

//len_list: 35
//==============================


//==============================
    submit.push(7386);
    ref.push(7386);

//len_list: 36
//==============================


//==============================
    submit.push(4606);
    ref.push(4606);

//len_list: 37
//==============================


//==============================
    submit.push(6848);
    ref.push(6848);

//len_list: 38
//==============================


//==============================
    submit.push(6115);
    ref.push(6115);

//len_list: 39
//==============================


//==============================
    submit.push(166);
    ref.push(166);

//len_list: 40
//==============================


//==============================
    submit.push(5262);
    ref.push(5262);

//len_list: 41
//==============================


//==============================
    submit.push(7919);
    ref.push(7919);

//len_list: 42
//==============================


//==============================
    submit.push(287);
    ref.push(287);

//len_list: 43
//==============================


//==============================
    submit.push(264);
    ref.push(264);

//len_list: 44
//==============================


//==============================
    submit.push(3983);
    ref.push(3983);

//len_list: 45
//==============================


//==============================
    submit.push(5544);
    ref.push(5544);

//len_list: 46
//==============================


//==============================
    submit.push(3354);
    ref.push(3354);

//len_list: 47
//==============================


//==============================
    submit.push(2442);
    ref.push(2442);

//len_list: 48
//==============================


//==============================
    submit.push(8647);
    ref.push(8647);

//len_list: 49
//==============================


//==============================
    submit.push(2323);
    ref.push(2323);

//len_list: 50
//==============================


//==============================
    submit.push(9016);
    ref.push(9016);

//len_list: 51
//==============================


//==============================
    submit.push(2693);
    ref.push(2693);

//len_list: 52
//==============================


//==============================
    submit.push(2081);
    ref.push(2081);

//len_list: 53
//==============================


//==============================
    submit.push(9418);
    ref.push(9418);

//len_list: 54
//==============================


//==============================
    submit.push(9457);
    ref.push(9457);

//len_list: 55
//==============================


//==============================
    submit.push(651);
    ref.push(651);

//len_list: 56
//==============================


//==============================
    submit.push(6462);
    ref.push(6462);

//len_list: 57
//==============================


//==============================
    submit.push(7365);
    ref.push(7365);

//len_list: 58
//==============================


//==============================
    submit.push(7148);
    ref.push(7148);

//len_list: 59
//==============================


//==============================
    submit.push(7199);
    ref.push(7199);

//len_list: 60
//==============================


//==============================
    submit.push(3135);
    ref.push(3135);

//len_list: 61
//==============================


//==============================
    submit.push(7018);
    ref.push(7018);

//len_list: 62
//==============================


//==============================
    submit.push(8389);
    ref.push(8389);

//len_list: 63
//==============================


//==============================
    submit.push(8391);
    ref.push(8391);

//len_list: 64
//==============================


//==============================
    submit.push(7052);
    ref.push(7052);

//len_list: 65
//==============================


//==============================
    submit.push(5532);
    ref.push(5532);

//len_list: 66
//==============================


//==============================
    submit.push(6615);
    ref.push(6615);

//len_list: 67
//==============================


//==============================
    submit.push(3541);
    ref.push(3541);

//len_list: 68
//==============================


//==============================
    submit.push(5173);
    ref.push(5173);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(1400);
    ref.push(1400);

//len_list: 70
//==============================


//==============================
    submit.push(2003);
    ref.push(2003);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(5508);
    ref.push(5508);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(2017);
    ref.push(2017);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(873);
    ref.push(873);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(9610);
    ref.push(9610);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(9233);
    ref.push(9233);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(5793);
    ref.push(5793);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(7815);
    ref.push(7815);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(3716);
    ref.push(3716);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.push(5438);
    ref.push(5438);

//len_list: 74
//==============================


//==============================
    submit.push(5689);
    ref.push(5689);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(5047);
    ref.push(5047);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(8155);
    ref.push(8155);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(8066);
    ref.push(8066);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(1024);
    ref.push(1024);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 39
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 40
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(171);
    ref.push(171);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 42
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 44
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 45
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 47
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(5770);
    ref.push(5770);

//len_list: 69
//==============================


//==============================
    submit.push(4287);
    ref.push(4287);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(8280);
    ref.push(8280);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 49
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.push(175);
    ref.push(175);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 50
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(2553);
    ref.push(2553);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 51
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 52
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(499);
    ref.push(499);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 55
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(6651);
    ref.push(6651);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(8344);
    ref.push(8344);

//len_list: 69
//==============================


//==============================
    submit.push(5128);
    ref.push(5128);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 72
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(5331);
    ref.push(5331);

//len_list: 69
//==============================


//==============================
    submit.push(6271);
    ref.push(6271);

//len_list: 70
//==============================


//==============================
    submit.push(6920);
    ref.push(6920);

//len_list: 71
//==============================


//==============================
    submit.push(8370);
    ref.push(8370);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(8533);
    ref.push(8533);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(5171);
    ref.push(5171);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(2574);
    ref.push(2574);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.push(3911);
    ref.push(3911);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(5703);
    ref.push(5703);

//len_list: 69
//==============================


//==============================
    submit.push(3588);
    ref.push(3588);

//len_list: 70
//==============================


//==============================
    submit.push(3995);
    ref.push(3995);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(132);
    ref.push(132);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(8777);
    ref.push(8777);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(7367);
    ref.push(7367);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(2229);
    ref.push(2229);

//len_list: 69
//==============================


//==============================
    submit.push(7547);
    ref.push(7547);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(5796);
    ref.push(5796);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(8993);
    ref.push(8993);

//len_list: 69
//==============================


//==============================
    submit.push(6954);
    ref.push(6954);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(6171);
    ref.push(6171);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(3039);
    ref.push(3039);

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(35);
    ref.push(35);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(26);
    ref.push(26);

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 124
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(4445);
    ref.push(4445);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(9254);
    ref.push(9254);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 130
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(2333);
    ref.push(2333);

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(4312);
    ref.push(4312);

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(5024);
    ref.push(5024);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 139
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 140
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(7210);
    ref.push(7210);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(5675);
    ref.push(5675);

//len_list: 70
//==============================


//==============================
    submit.push(4877);
    ref.push(4877);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 145
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 146
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(523);
    ref.push(523);

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 149
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(1961);
    ref.push(1961);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 150
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(9610);
    ref.push(9610);

//len_list: 73
//==============================


//==============================
    submit.push(9463);
    ref.push(9463);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.push(4775);
    ref.push(4775);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.push(2598);
    ref.push(2598);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(8600);
    ref.push(8600);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 154
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 157
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(1199);
    ref.push(1199);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(5338);
    ref.push(5338);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 170
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(5689);
    ref.push(5689);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(3833);
    ref.push(3833);

//len_list: 76
//==============================


//==============================
    submit.push(9433);
    ref.push(9433);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8253);
    ref.push(8253);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 180
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(768);
    ref.push(768);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(3549);
    ref.push(3549);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 189
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(9504);
    ref.push(9504);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(2123);
    ref.push(2123);

//len_list: 78
//==============================


//==============================
    submit.push(9659);
    ref.push(9659);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(551);
    ref.push(551);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(9326);
    ref.push(9326);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(1604);
    ref.push(1604);

//len_list: 77
//==============================


//==============================
    submit.push(6255);
    ref.push(6255);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 211
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 214
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(4525);
    ref.push(4525);

//len_list: 76
//==============================


//==============================
    submit.push(6945);
    ref.push(6945);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(6776);
    ref.push(6776);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 224
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 225
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(7833);
    ref.push(7833);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 226
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(8610);
    ref.push(8610);

//len_list: 75
//==============================


//==============================
    submit.push(615);
    ref.push(615);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 227
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(2363);
    ref.push(2363);

//len_list: 77
//==============================


//==============================
    submit.push(2875);
    ref.push(2875);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(7332);
    ref.push(7332);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 230
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 231
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(3165);
    ref.push(3165);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(3967);
    ref.push(3967);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 236
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(5864);
    ref.push(5864);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 240
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 241
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 243
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.push(2076);
    ref.push(2076);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 248
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.push(4684);
    ref.push(4684);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(3416);
    ref.push(3416);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(4105);
    ref.push(4105);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(7507);
    ref.push(7507);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(6144);
    ref.push(6144);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(47);
    ref.push(47);

//len_list: 74
//==============================


//==============================
    submit.push(9575);
    ref.push(9575);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(4175);
    ref.push(4175);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(9073);
    ref.push(9073);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 282
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(3020);
    ref.push(3020);

//len_list: 74
//==============================


//==============================
    submit.push(3785);
    ref.push(3785);

//len_list: 75
//==============================


//==============================
    submit.push(4026);
    ref.push(4026);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(2309);
    ref.push(2309);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(3393);
    ref.push(3393);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 288
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 294
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(6913);
    ref.push(6913);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 297
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(3555);
    ref.push(3555);

//len_list: 74
//==============================


//==============================
    submit.push(5471);
    ref.push(5471);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(1515);
    ref.push(1515);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(461);
    ref.push(461);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 304
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 306
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(4224);
    ref.push(4224);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(6520);
    ref.push(6520);

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(3656);
    ref.push(3656);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(2626);
    ref.push(2626);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(8317);
    ref.push(8317);

//len_list: 71
//==============================


//==============================
    submit.push(1668);
    ref.push(1668);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(4597);
    ref.push(4597);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(3005);
    ref.push(3005);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(1352);
    ref.push(1352);

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(9378);
    ref.push(9378);

//len_list: 69
//==============================


//==============================
    submit.push(7024);
    ref.push(7024);

//len_list: 70
//==============================


//==============================
    submit.push(2729);
    ref.push(2729);

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(819);
    ref.push(819);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(2033);
    ref.push(2033);

//len_list: 69
//==============================


//==============================
    submit.push(2186);
    ref.push(2186);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(6842);
    ref.push(6842);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(8465);
    ref.push(8465);

//len_list: 69
//==============================


//==============================
    submit.push(6842);
    ref.push(6842);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(2433);
    ref.push(2433);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 357
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(6997);
    ref.push(6997);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(6173);
    ref.push(6173);

//len_list: 70
//==============================


//==============================
    submit.push(6015);
    ref.push(6015);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(420);
    ref.push(420);

//len_list: 72
//==============================


//==============================
    submit.push(7477);
    ref.push(7477);

//len_list: 73
//==============================


//==============================
    submit.push(6412);
    ref.push(6412);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(5662);
    ref.push(5662);

//len_list: 75
//==============================


//==============================
    submit.push(2369);
    ref.push(2369);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 373
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 374
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(9937);
    ref.push(9937);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 378
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(6869);
    ref.push(6869);

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(1494);
    ref.push(1494);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(8636);
    ref.push(8636);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(5344);
    ref.push(5344);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(5806);
    ref.push(5806);

//len_list: 75
//==============================


//==============================
    submit.push(4254);
    ref.push(4254);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(7939);
    ref.push(7939);

//len_list: 76
//==============================


//==============================
    submit.push(4948);
    ref.push(4948);

//len_list: 77
//==============================


//==============================
    submit.push(8618);
    ref.push(8618);

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(2489);
    ref.push(2489);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(2674);
    ref.push(2674);

//len_list: 76
//==============================


//==============================
    submit.push(9005);
    ref.push(9005);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(2206);
    ref.push(2206);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(7747);
    ref.push(7747);

//len_list: 76
//==============================


//==============================
    submit.push(405);
    ref.push(405);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.push(9505);
    ref.push(9505);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(6415);
    ref.push(6415);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(9616);
    ref.push(9616);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 438
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(9129);
    ref.push(9129);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(5363);
    ref.push(5363);

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 443
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(4473);
    ref.push(4473);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(4285);
    ref.push(4285);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(5633);
    ref.push(5633);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(4016);
    ref.push(4016);

//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 459
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(7471);
    ref.push(7471);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 465
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(3431);
    ref.push(3431);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(9005);
    ref.push(9005);

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(6381);
    ref.push(6381);

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(3916);
    ref.push(3916);

//len_list: 69
//==============================


//==============================
    submit.push(1851);
    ref.push(1851);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 470
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 473
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(3518);
    ref.push(3518);

//len_list: 71
//==============================


//==============================
    submit.push(1739);
    ref.push(1739);

//len_list: 72
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(607);
    ref.push(607);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(2323);
    ref.push(2323);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(9176);
    ref.push(9176);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(8732);
    ref.push(8732);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 487
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 488
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 493
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(1475);
    ref.push(1475);

//len_list: 74
//==============================


//==============================
    submit.push(1260);
    ref.push(1260);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 497
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(8349);
    ref.push(8349);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(7471);
    ref.push(7471);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(7480);
    ref.push(7480);

//len_list: 77
//==============================


//==============================
    submit.push(2572);
    ref.push(2572);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 507
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(1857);
    ref.push(1857);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 508
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(318);
    ref.push(318);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(77);
    ref.push(77);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(4971);
    ref.push(4971);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(2172);
    ref.push(2172);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(8236);
    ref.push(8236);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(7555);
    ref.push(7555);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(9380);
    ref.push(9380);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    submit.push(1801);
    ref.push(1801);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(8374);
    ref.push(8374);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 544
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(8619);
    ref.push(8619);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(9534);
    ref.push(9534);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(9754);
    ref.push(9754);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(2757);
    ref.push(2757);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(3138);
    ref.push(3138);

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(4135);
    ref.push(4135);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 562
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(1822);
    ref.push(1822);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(5568);
    ref.push(5568);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.push(1430);
    ref.push(1430);

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(3741);
    ref.push(3741);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 71
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 70
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 69
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 68
//==============================


//==============================
    submit.push(762);
    ref.push(762);

//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 69
//==============================


//==============================
    submit.push(4409);
    ref.push(4409);

//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 70
//==============================


//==============================
    submit.push(4325);
    ref.push(4325);

//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 71
//==============================


//==============================
    submit.push(9742);
    ref.push(9742);

//len_list: 72
//==============================


//==============================
    submit.push(6103);
    ref.push(6103);

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(1636);
    ref.push(1636);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(5269);
    ref.push(5269);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(110);
    ref.push(110);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 596
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(7580);
    ref.push(7580);

//len_list: 74
//==============================


//==============================
    submit.push(982);
    ref.push(982);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(3395);
    ref.push(3395);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 611
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 617
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 618
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 619
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(6759);
    ref.push(6759);

//len_list: 74
//==============================


//==============================
    submit.push(130);
    ref.push(130);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 620
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.push(2273);
    ref.push(2273);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 624
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 625
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(3441);
    ref.push(3441);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.push(8971);
    ref.push(8971);

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 627
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(7872);
    ref.push(7872);

//len_list: 75
//==============================


//==============================
    submit.push(4469);
    ref.push(4469);

//len_list: 76
//==============================


//==============================
    submit.push(8337);
    ref.push(8337);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(9667);
    ref.push(9667);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 634
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(4864);
    ref.push(4864);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(1366);
    ref.push(1366);

//len_list: 77
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 642
    REQUIRE( ret_ref == ret_submit);
//len_list: 77
//==============================


//==============================
    submit.push(8786);
    ref.push(8786);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 77
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 74
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 646
    REQUIRE( ret_ref == ret_submit);
//len_list: 73
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 72
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 647
    REQUIRE( ret_ref == ret_submit);
//len_list: 72
//==============================


//==============================
    submit.push(7346);
    ref.push(7346);

//len_list: 73
//==============================


//==============================
    submit.push(5843);
    ref.push(5843);

//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 648
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 74
//==============================


//==============================
    submit.push(6488);
    ref.push(6488);

//len_list: 75
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 75
//==============================


//==============================
    submit.push(3324);
    ref.push(3324);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 653
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 654
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 655
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 656
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 658
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 75
//==============================


//==============================
    submit.push(9909);
    ref.push(9909);

//len_list: 76
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 76
//==============================


//==============================
    submit.push(8610);
    ref.push(8610);

//len_list: 77
//==============================


//==============================
    submit.push(7126);
    ref.push(7126);

//len_list: 78
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 660
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 661
    REQUIRE( ret_ref == ret_submit);
//len_list: 78
//==============================


//==============================
    submit.push(6972);
    ref.push(6972);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(5902);
    ref.push(5902);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(7774);
    ref.push(7774);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(5029);
    ref.push(5029);

//len_list: 79
//==============================


//==============================
    submit.push(4238);
    ref.push(4238);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 672
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(8985);
    ref.push(8985);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 675
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6768) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4684) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 678
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3465) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8238) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2332) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3125) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7431) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 684
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4333) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 693
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3883) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3198) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2637) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1865) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 701
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3052) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 705
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9561) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 706
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5074) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7808) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6781) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(795) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6613) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5315) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(539) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7875) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 723
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 724
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 725
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 726
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 727
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 728
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 729
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 730
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 731
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5186) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 732
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2589) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 733
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 734
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 735
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 736
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 737
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 738
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 739
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(569) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 740
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4434) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6656) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 741
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 742
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8661) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 743
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 744
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 745
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1375) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 746
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5330) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 747
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2933) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 748
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 749
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 750
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 751
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 752
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(483) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 753
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 754
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 755
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 756
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 757
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 758
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 759
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 760
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(619) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 761
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 762
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8682) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 763
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1333) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 764
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 765
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 766
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1726) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 767
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3842) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 768
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 769
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 770
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 771
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 772
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 773
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 774
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6105) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 775
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7357) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 776
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4856) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 777
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 778
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 779
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 780
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 781
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 782
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 783
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 784
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 785
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 786
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 787
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7684) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 788
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 789
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 790
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 791
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 792
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 793
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 794
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 795
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 796
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 797
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 798
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1045) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1646) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 799
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9549) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 800
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 801
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 802
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2998) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 803
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 804
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 805
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4108) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 806
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 807
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5332) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 808
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 809
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 810
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 811
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5165) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 812
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 813
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 814
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 815
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 816
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 817
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9946) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 818
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 819
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 820
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 821
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8976) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6622) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(812) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 822
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 823
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 824
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 825
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 826
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 827
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1161) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 828
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 829
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 830
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 831
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 832
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 833
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 834
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 835
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 836
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 837
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 838
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 839
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 840
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 841
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 842
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 843
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(42) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 844
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 845
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 846
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 847
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1696) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 848
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4007) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(380) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 849
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 850
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 851
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2191) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 852
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 853
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 854
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 855
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 856
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 857
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 858
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 859
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(971) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 860
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 861
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 862
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 863
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 864
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6992) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 865
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 866
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 867
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4680) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 868
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 869
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 870
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 871
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9164) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 872
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 873
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 874
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7315) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 875
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 876
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 877
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 878
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 879
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4404) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 880
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 881
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 882
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7303) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 883
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 884
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2744) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 885
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8343) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 886
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 887
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 888
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 889
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 890
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 891
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 892
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 893
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 894
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 895
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 896
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 897
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2756) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3346) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 898
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 899
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 900
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 901
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 902
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 903
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6288) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 904
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 905
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 906
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 907
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8417) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9974) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 908
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 909
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 910
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 911
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8430) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6457) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 912
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 913
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 914
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 915
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7376) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6658) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(967) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 916
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6022) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 917
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 918
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 919
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1851) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3682) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 920
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 921
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2368) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 922
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 923
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 924
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4660) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2097) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2465) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1027) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 925
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 926
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 927
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 928
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 929
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4470) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 930
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 931
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 932
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 933
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 934
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 935
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 936
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 937
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6742) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 938
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 939
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 940
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 941
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 942
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 943
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(850) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 944
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 945
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 946
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 947
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 948
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 949
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 950
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 951
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 952
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 953
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2240) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 954
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 955
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 956
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 957
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 958
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 959
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 960
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 961
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8456) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2737) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 962
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 963
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6251) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 964
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4744) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 965
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 966
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 967
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 968
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9014) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 969
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 970
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 971
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 972
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 973
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 974
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 975
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 976
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1512) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 977
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9760) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3371) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5130) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 978
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 979
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 980
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 981
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 982
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(812) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 983
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 984
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 985
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(7477) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 986
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9709) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 987
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 988
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5106) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3242) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 989
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9561) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3450) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(220) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 990
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 991
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 992
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 993
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 994
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 995
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(9049) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 996
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1278) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(4011) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 997
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 998
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 999
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1000
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1001
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1002
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1003
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1004
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(8434) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1005
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1006
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1007
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1008
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(5707) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1009
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1010
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1011
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(6546) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(1632) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1012
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(2469) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1013
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1014
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.push(3627) , runtime_error );
    

//len_list: 81
//==============================


//==============================
    CHECK_THROWS_AS( submit.pop() , runtime_error );
    

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 1015
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 1016
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


}
