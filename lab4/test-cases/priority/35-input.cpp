
    #include "catch.hpp"
    #include "MyPriorityQueueImpl.h"
    #include <queue>
    #include <stdexcept>
    #include <iostream>
    using namespace std;
    TEST_CASE( "test queue with (capacity, len_cmd) = (325,1297)") {

    std::priority_queue<int> ref;
    MyPriorityQueueImpl<int,true> submit;
    int ret_ref;
    int ret_submit;

//==============================
    submit.push(3171);
    ref.push(3171);

//len_list: 1
//==============================


//==============================
    submit.push(1716);
    ref.push(1716);

//len_list: 2
//==============================


//==============================
    submit.push(6130);
    ref.push(6130);

//len_list: 3
//==============================


//==============================
    submit.push(5462);
    ref.push(5462);

//len_list: 4
//==============================


//==============================
    submit.push(771);
    ref.push(771);

//len_list: 5
//==============================


//==============================
    submit.push(6963);
    ref.push(6963);

//len_list: 6
//==============================


//==============================
    submit.push(1711);
    ref.push(1711);

//len_list: 7
//==============================


//==============================
    submit.push(1170);
    ref.push(1170);

//len_list: 8
//==============================


//==============================
    submit.push(2562);
    ref.push(2562);

//len_list: 9
//==============================


//==============================
    submit.push(8089);
    ref.push(8089);

//len_list: 10
//==============================


//==============================
    submit.push(9107);
    ref.push(9107);

//len_list: 11
//==============================


//==============================
    submit.push(9504);
    ref.push(9504);

//len_list: 12
//==============================


//==============================
    submit.push(4616);
    ref.push(4616);

//len_list: 13
//==============================


//==============================
    submit.push(1000);
    ref.push(1000);

//len_list: 14
//==============================


//==============================
    submit.push(9077);
    ref.push(9077);

//len_list: 15
//==============================


//==============================
    submit.push(6908);
    ref.push(6908);

//len_list: 16
//==============================


//==============================
    submit.push(2811);
    ref.push(2811);

//len_list: 17
//==============================


//==============================
    submit.push(3426);
    ref.push(3426);

//len_list: 18
//==============================


//==============================
    submit.push(4931);
    ref.push(4931);

//len_list: 19
//==============================


//==============================
    submit.push(515);
    ref.push(515);

//len_list: 20
//==============================


//==============================
    submit.push(4992);
    ref.push(4992);

//len_list: 21
//==============================


//==============================
    submit.push(7772);
    ref.push(7772);

//len_list: 22
//==============================


//==============================
    submit.push(49);
    ref.push(49);

//len_list: 23
//==============================


//==============================
    submit.push(5284);
    ref.push(5284);

//len_list: 24
//==============================


//==============================
    submit.push(8504);
    ref.push(8504);

//len_list: 25
//==============================


//==============================
    submit.push(616);
    ref.push(616);

//len_list: 26
//==============================


//==============================
    submit.push(5705);
    ref.push(5705);

//len_list: 27
//==============================


//==============================
    submit.push(9812);
    ref.push(9812);

//len_list: 28
//==============================


//==============================
    submit.push(7771);
    ref.push(7771);

//len_list: 29
//==============================


//==============================
    submit.push(9101);
    ref.push(9101);

//len_list: 30
//==============================


//==============================
    submit.push(3446);
    ref.push(3446);

//len_list: 31
//==============================


//==============================
    submit.push(979);
    ref.push(979);

//len_list: 32
//==============================


//==============================
    submit.push(4825);
    ref.push(4825);

//len_list: 33
//==============================


//==============================
    submit.push(7207);
    ref.push(7207);

//len_list: 34
//==============================


//==============================
    submit.push(2807);
    ref.push(2807);

//len_list: 35
//==============================


//==============================
    submit.push(9069);
    ref.push(9069);

//len_list: 36
//==============================


//==============================
    submit.push(2420);
    ref.push(2420);

//len_list: 37
//==============================


//==============================
    submit.push(6211);
    ref.push(6211);

//len_list: 38
//==============================


//==============================
    submit.push(903);
    ref.push(903);

//len_list: 39
//==============================


//==============================
    submit.push(8984);
    ref.push(8984);

//len_list: 40
//==============================


//==============================
    submit.push(9422);
    ref.push(9422);

//len_list: 41
//==============================


//==============================
    submit.push(9978);
    ref.push(9978);

//len_list: 42
//==============================


//==============================
    submit.push(7499);
    ref.push(7499);

//len_list: 43
//==============================


//==============================
    submit.push(8789);
    ref.push(8789);

//len_list: 44
//==============================


//==============================
    submit.push(9479);
    ref.push(9479);

//len_list: 45
//==============================


//==============================
    submit.push(3659);
    ref.push(3659);

//len_list: 46
//==============================


//==============================
    submit.push(945);
    ref.push(945);

//len_list: 47
//==============================


//==============================
    submit.push(5577);
    ref.push(5577);

//len_list: 48
//==============================


//==============================
    submit.push(1291);
    ref.push(1291);

//len_list: 49
//==============================


//==============================
    submit.push(4455);
    ref.push(4455);

//len_list: 50
//==============================


//==============================
    submit.push(3324);
    ref.push(3324);

//len_list: 51
//==============================


//==============================
    submit.push(3017);
    ref.push(3017);

//len_list: 52
//==============================


//==============================
    submit.push(4963);
    ref.push(4963);

//len_list: 53
//==============================


//==============================
    submit.push(6395);
    ref.push(6395);

//len_list: 54
//==============================


//==============================
    submit.push(7596);
    ref.push(7596);

//len_list: 55
//==============================


//==============================
    submit.push(8951);
    ref.push(8951);

//len_list: 56
//==============================


//==============================
    submit.push(5810);
    ref.push(5810);

//len_list: 57
//==============================


//==============================
    submit.push(684);
    ref.push(684);

//len_list: 58
//==============================


//==============================
    submit.push(4387);
    ref.push(4387);

//len_list: 59
//==============================


//==============================
    submit.push(7737);
    ref.push(7737);

//len_list: 60
//==============================


//==============================
    submit.push(4860);
    ref.push(4860);

//len_list: 61
//==============================


//==============================
    submit.push(5137);
    ref.push(5137);

//len_list: 62
//==============================


//==============================
    submit.push(503);
    ref.push(503);

//len_list: 63
//==============================


//==============================
    submit.push(3298);
    ref.push(3298);

//len_list: 64
//==============================


//==============================
    submit.push(7460);
    ref.push(7460);

//len_list: 65
//==============================


//==============================
    submit.push(3020);
    ref.push(3020);

//len_list: 66
//==============================


//==============================
    submit.push(9624);
    ref.push(9624);

//len_list: 67
//==============================


//==============================
    submit.push(4336);
    ref.push(4336);

//len_list: 68
//==============================


//==============================
    submit.push(8816);
    ref.push(8816);

//len_list: 69
//==============================


//==============================
    submit.push(1002);
    ref.push(1002);

//len_list: 70
//==============================


//==============================
    submit.push(3014);
    ref.push(3014);

//len_list: 71
//==============================


//==============================
    submit.push(8422);
    ref.push(8422);

//len_list: 72
//==============================


//==============================
    submit.push(2921);
    ref.push(2921);

//len_list: 73
//==============================


//==============================
    submit.push(4432);
    ref.push(4432);

//len_list: 74
//==============================


//==============================
    submit.push(7391);
    ref.push(7391);

//len_list: 75
//==============================


//==============================
    submit.push(8653);
    ref.push(8653);

//len_list: 76
//==============================


//==============================
    submit.push(3880);
    ref.push(3880);

//len_list: 77
//==============================


//==============================
    submit.push(4950);
    ref.push(4950);

//len_list: 78
//==============================


//==============================
    submit.push(6326);
    ref.push(6326);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(4861);
    ref.push(4861);

//len_list: 79
//==============================


//==============================
    submit.push(1882);
    ref.push(1882);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 1
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 2
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 3
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 4
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(7022);
    ref.push(7022);

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 5
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(9859);
    ref.push(9859);

//len_list: 80
//==============================


//==============================
    submit.push(5543);
    ref.push(5543);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 6
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(7560);
    ref.push(7560);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 7
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 8
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 9
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    submit.push(5197);
    ref.push(5197);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 10
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 11
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 12
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(7240);
    ref.push(7240);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 13
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 14
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 15
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 16
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(3596);
    ref.push(3596);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 17
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(2678);
    ref.push(2678);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 18
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 19
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 20
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 21
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(7551);
    ref.push(7551);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 22
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 23
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(8043);
    ref.push(8043);

//len_list: 84
//==============================


//==============================
    submit.push(6731);
    ref.push(6731);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 24
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 25
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 26
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 27
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 28
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 29
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 30
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 31
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(271);
    ref.push(271);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 32
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(661);
    ref.push(661);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 33
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 34
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 35
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 36
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(3626);
    ref.push(3626);

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
//num_require: 37
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(396);
    ref.push(396);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 38
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    submit.push(9401);
    ref.push(9401);

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
//num_require: 41
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(973);
    ref.push(973);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 42
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
//num_require: 43
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5678);
    ref.push(5678);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 46
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 48
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
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
    submit.push(8478);
    ref.push(8478);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 52
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
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 53
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 54
    REQUIRE( ret_ref == ret_submit);
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 56
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
//num_require: 57
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(8585);
    ref.push(8585);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 58
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 59
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(6801);
    ref.push(6801);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 60
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 61
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 62
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(7625);
    ref.push(7625);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 63
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8121);
    ref.push(8121);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 64
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 65
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 66
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 67
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 68
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 69
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(5426);
    ref.push(5426);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 70
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(2424);
    ref.push(2424);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 71
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(8552);
    ref.push(8552);

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
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 73
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 74
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 75
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 76
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 77
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(7491);
    ref.push(7491);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 78
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(8627);
    ref.push(8627);

//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(6443);
    ref.push(6443);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 79
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 80
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 78
//==============================


//==============================
    submit.push(9009);
    ref.push(9009);

//len_list: 79
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 81
    REQUIRE( ret_ref == ret_submit);
//len_list: 79
//==============================


//==============================
    submit.push(1722);
    ref.push(1722);

//len_list: 80
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 82
    REQUIRE( ret_ref == ret_submit);
//len_list: 80
//==============================


//==============================
    submit.push(1258);
    ref.push(1258);

//len_list: 81
//==============================


//==============================
    submit.push(924);
    ref.push(924);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 83
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 84
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 85
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(3242);
    ref.push(3242);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 86
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 87
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(4910);
    ref.push(4910);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 88
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 89
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 90
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 91
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 80
//==============================


//==============================
    submit.push(4557);
    ref.push(4557);

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 92
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 93
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 94
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 95
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 96
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 97
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(7278);
    ref.push(7278);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 98
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 99
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 100
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 101
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 102
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 103
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 104
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 105
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(9461);
    ref.push(9461);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 106
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(6485);
    ref.push(6485);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 107
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 108
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 109
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 110
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 111
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 112
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 113
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 114
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 115
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 116
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(8511);
    ref.push(8511);

//len_list: 82
//==============================


//==============================
    submit.push(3164);
    ref.push(3164);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 117
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 118
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 119
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 120
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 121
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 122
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(9372);
    ref.push(9372);

//len_list: 84
//==============================


//==============================
    submit.push(403);
    ref.push(403);

//len_list: 85
//==============================


//==============================
    submit.push(7589);
    ref.push(7589);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 123
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(1630);
    ref.push(1630);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 124
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
//num_require: 125
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 126
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(5398);
    ref.push(5398);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 127
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
//num_require: 128
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 129
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
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(2697);
    ref.push(2697);

//len_list: 83
//==============================


//==============================
    submit.push(2212);
    ref.push(2212);

//len_list: 84
//==============================


//==============================
    submit.push(3662);
    ref.push(3662);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 130
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
//num_require: 131
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 132
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 133
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 134
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(8916);
    ref.push(8916);

//len_list: 85
//==============================


//==============================
    submit.push(9525);
    ref.push(9525);

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
//num_require: 135
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(908);
    ref.push(908);

//len_list: 85
//==============================


//==============================
    submit.push(3565);
    ref.push(3565);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 136
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 137
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(2476);
    ref.push(2476);

//len_list: 87
//==============================


//==============================
    submit.push(5443);
    ref.push(5443);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 138
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(4263);
    ref.push(4263);

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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 141
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 142
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3795);
    ref.push(3795);

//len_list: 89
//==============================


//==============================
    submit.push(4469);
    ref.push(4469);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 143
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    submit.push(634);
    ref.push(634);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 144
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8320);
    ref.push(8320);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 146
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 147
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 148
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    submit.push(4608);
    ref.push(4608);

//len_list: 88
//==============================


//==============================
    submit.push(6273);
    ref.push(6273);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 151
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(9187);
    ref.push(9187);

//len_list: 90
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 152
    REQUIRE( ret_ref == ret_submit);
//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 153
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(4511);
    ref.push(4511);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 154
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
//num_require: 155
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 156
    REQUIRE( ret_ref == ret_submit);
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
    submit.push(943);
    ref.push(943);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 158
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 159
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(8667);
    ref.push(8667);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 160
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 161
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 162
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 163
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 164
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 165
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 166
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(2947);
    ref.push(2947);

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
//num_require: 167
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 168
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 169
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 170
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
//num_require: 171
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 172
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 173
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 174
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 175
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(2069);
    ref.push(2069);

//len_list: 86
//==============================


//==============================
    submit.push(1721);
    ref.push(1721);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 176
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 177
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 178
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 179
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 180
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
//num_require: 181
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(6159);
    ref.push(6159);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 182
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
//num_require: 183
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 184
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 185
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
//num_require: 186
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 187
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
//num_require: 188
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 189
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
//num_require: 190
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 191
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 192
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 193
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 194
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(6854);
    ref.push(6854);

//len_list: 82
//==============================


//==============================
    submit.push(8877);
    ref.push(8877);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 195
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 196
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 197
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8714);
    ref.push(8714);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 198
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 199
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 200
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 201
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 202
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(9674);
    ref.push(9674);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 203
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 204
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 205
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 206
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 207
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(9533);
    ref.push(9533);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 208
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 209
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6224);
    ref.push(6224);

//len_list: 85
//==============================


//==============================
    submit.push(7416);
    ref.push(7416);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 210
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(9285);
    ref.push(9285);

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
//num_require: 211
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 212
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 213
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(9096);
    ref.push(9096);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 214
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 215
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(5010);
    ref.push(5010);

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
//num_require: 216
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 217
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 218
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 219
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 220
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 221
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(8121);
    ref.push(8121);

//len_list: 83
//==============================


//==============================
    submit.push(2963);
    ref.push(2963);

//len_list: 84
//==============================


//==============================
    submit.push(640);
    ref.push(640);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 222
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 223
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 228
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(3845);
    ref.push(3845);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 229
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 230
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
//num_require: 231
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
//num_require: 232
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(8733);
    ref.push(8733);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 233
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 234
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(112);
    ref.push(112);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 235
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(1799);
    ref.push(1799);

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
    submit.push(5644);
    ref.push(5644);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 237
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 238
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 239
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(7401);
    ref.push(7401);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 240
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
//num_require: 241
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 242
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(6037);
    ref.push(6037);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 243
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
//num_require: 244
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 245
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(4511);
    ref.push(4511);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 246
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 247
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 248
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
//num_require: 249
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 250
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(9234);
    ref.push(9234);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 251
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 252
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(7648);
    ref.push(7648);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 253
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 254
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 255
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(5714);
    ref.push(5714);

//len_list: 82
//==============================


//==============================
    submit.push(6094);
    ref.push(6094);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 256
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(7417);
    ref.push(7417);

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
//num_require: 257
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 258
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 259
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 260
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 261
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 262
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 263
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(1640);
    ref.push(1640);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 264
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 265
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 266
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(9207);
    ref.push(9207);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 267
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 268
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(233);
    ref.push(233);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 269
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3610);
    ref.push(3610);

//len_list: 84
//==============================


//==============================
    submit.push(2740);
    ref.push(2740);

//len_list: 85
//==============================


//==============================
    submit.push(4910);
    ref.push(4910);

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
//num_require: 270
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5502);
    ref.push(5502);

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
//num_require: 271
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5375);
    ref.push(5375);

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
//num_require: 272
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 273
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5862);
    ref.push(5862);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 274
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 275
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(1662);
    ref.push(1662);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 276
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(641);
    ref.push(641);

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
//num_require: 277
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 278
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 279
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 280
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(1918);
    ref.push(1918);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 281
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(7167);
    ref.push(7167);

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
//num_require: 282
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
//num_require: 283
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(4751);
    ref.push(4751);

//len_list: 87
//==============================


//==============================
    submit.push(4621);
    ref.push(4621);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 284
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 285
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 286
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 287
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 288
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
//num_require: 289
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 290
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 291
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 292
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 293
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 294
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
//num_require: 295
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 296
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 297
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
    submit.push(1983);
    ref.push(1983);

//len_list: 85
//==============================


//==============================
    submit.push(4466);
    ref.push(4466);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 298
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 299
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 300
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(3459);
    ref.push(3459);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 301
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 302
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
//num_require: 303
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 304
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
//num_require: 305
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 306
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
//num_require: 307
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 308
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 309
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 310
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(8710);
    ref.push(8710);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 311
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 312
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 313
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 314
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 315
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 316
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 317
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 318
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 319
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
    submit.push(6289);
    ref.push(6289);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 320
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 321
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 322
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 323
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 324
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 325
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 326
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 327
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 328
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 329
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 330
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(2613);
    ref.push(2613);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 331
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 332
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 333
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(9697);
    ref.push(9697);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 334
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 335
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 336
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 337
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 338
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(5970);
    ref.push(5970);

//len_list: 83
//==============================


//==============================
    submit.push(9457);
    ref.push(9457);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 339
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 340
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 341
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 342
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
//num_require: 343
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 344
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 345
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 346
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 347
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 348
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 349
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(5449);
    ref.push(5449);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 350
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 351
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(7087);
    ref.push(7087);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 352
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(694);
    ref.push(694);

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
//num_require: 353
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 354
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 355
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 356
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3874);
    ref.push(3874);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 357
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
//num_require: 358
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3464);
    ref.push(3464);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 359
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 360
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(625);
    ref.push(625);

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
//num_require: 361
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 362
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 363
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5837);
    ref.push(5837);

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
//num_require: 364
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(990);
    ref.push(990);

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
//num_require: 365
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5990);
    ref.push(5990);

//len_list: 85
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 84
//==============================


//==============================
    submit.push(4747);
    ref.push(4747);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 366
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1645);
    ref.push(1645);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 367
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 368
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(5311);
    ref.push(5311);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 369
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 370
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 371
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 372
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 373
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
//num_require: 374
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
//num_require: 375
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 376
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 377
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 378
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
//num_require: 379
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 380
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 381
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 382
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 383
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 384
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 385
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(8941);
    ref.push(8941);

//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 386
    REQUIRE( ret_ref == ret_submit);
//len_list: 81
//==============================


//==============================
    submit.push(3766);
    ref.push(3766);

//len_list: 82
//==============================


//==============================
    submit.push(7094);
    ref.push(7094);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 387
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 388
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 389
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 390
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 391
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 81
//==============================


//==============================
    submit.push(4479);
    ref.push(4479);

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 392
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(9823);
    ref.push(9823);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 393
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 394
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 395
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 396
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 397
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 398
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 399
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 400
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 401
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 402
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 403
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 404
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 405
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 406
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(7819);
    ref.push(7819);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 407
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 408
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 409
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 410
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(4632);
    ref.push(4632);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(4298);
    ref.push(4298);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 411
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 412
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 413
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 414
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(2929);
    ref.push(2929);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 415
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(4836);
    ref.push(4836);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 416
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
//num_require: 417
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 418
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(5070);
    ref.push(5070);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 419
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 420
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(6591);
    ref.push(6591);

//len_list: 86
//==============================


//==============================
    submit.push(9327);
    ref.push(9327);

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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 421
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 422
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 423
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 424
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 425
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 426
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 427
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
//num_require: 428
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(3047);
    ref.push(3047);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 429
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 430
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(6596);
    ref.push(6596);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 431
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 432
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(7733);
    ref.push(7733);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 433
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 434
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 435
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 436
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(8106);
    ref.push(8106);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 437
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 438
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
//num_require: 439
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 440
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 441
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 442
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 443
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
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 444
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 445
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 446
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 447
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 448
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 449
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 450
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 451
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(6596);
    ref.push(6596);

//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 452
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 453
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 454
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 455
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(9637);
    ref.push(9637);

//len_list: 84
//==============================


//==============================
    submit.push(7745);
    ref.push(7745);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 456
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 457
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1960);
    ref.push(1960);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(2752);
    ref.push(2752);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 458
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(5799);
    ref.push(5799);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 459
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
//num_require: 460
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 461
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 462
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 463
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 464
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(6760);
    ref.push(6760);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 465
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
//num_require: 466
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 467
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 468
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 469
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 470
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
//num_require: 471
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(4173);
    ref.push(4173);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 472
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 473
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
//num_require: 474
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 475
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 476
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 477
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 478
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 479
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 480
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 481
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 482
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(3559);
    ref.push(3559);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 483
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 484
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 485
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 486
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 487
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
//num_require: 488
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
//num_require: 489
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(1612);
    ref.push(1612);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 490
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 491
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9826);
    ref.push(9826);

//len_list: 86
//==============================


//==============================
    submit.push(5255);
    ref.push(5255);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 492
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 493
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
//num_require: 494
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 495
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 496
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 497
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
//num_require: 498
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(5774);
    ref.push(5774);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 499
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(7292);
    ref.push(7292);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 500
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(4195);
    ref.push(4195);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 501
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 502
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 503
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 504
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 505
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 506
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(8169);
    ref.push(8169);

//len_list: 89
//==============================


//==============================
    submit.push(7079);
    ref.push(7079);

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
//num_require: 507
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
//num_require: 508
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 509
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 510
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 83
//==============================


//==============================
    submit.push(844);
    ref.push(844);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 511
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(1097);
    ref.push(1097);

//len_list: 85
//==============================


//==============================
    submit.push(9214);
    ref.push(9214);

//len_list: 86
//==============================


//==============================
    submit.push(5491);
    ref.push(5491);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 512
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    submit.push(5595);
    ref.push(5595);

//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 513
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 514
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 515
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(6743);
    ref.push(6743);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 516
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 517
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 518
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 88
//==============================


//==============================
    submit.push(7222);
    ref.push(7222);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 519
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(4343);
    ref.push(4343);

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
//num_require: 520
    REQUIRE( ret_ref == ret_submit);
//len_list: 88
//==============================


//==============================
    submit.push(3119);
    ref.push(3119);

//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 521
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 522
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 523
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 524
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 525
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 526
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 527
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 528
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 529
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 530
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 531
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 532
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 533
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 534
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 535
    REQUIRE( ret_ref == ret_submit);
//len_list: 89
//==============================


//==============================
    submit.push(6268);
    ref.push(6268);

//len_list: 90
//==============================


//==============================
    submit.push(2638);
    ref.push(2638);

//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 536
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 537
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 538
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 539
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 540
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 541
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 542
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(1847);
    ref.push(1847);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 543
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 544
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
//num_require: 545
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 546
    REQUIRE( ret_ref == ret_submit);
//len_list: 91
//==============================


//==============================
    submit.push(2088);
    ref.push(2088);

//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 547
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(8962);
    ref.push(8962);

//len_list: 93
//==============================


//==============================
    submit.push(5379);
    ref.push(5379);

//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 548
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 549
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    submit.push(1525);
    ref.push(1525);

//len_list: 95
//==============================


//==============================
    submit.push(3907);
    ref.push(3907);

//len_list: 96
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 550
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 551
    REQUIRE( ret_ref == ret_submit);
//len_list: 96
//==============================


//==============================
    submit.push(6128);
    ref.push(6128);

//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 552
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 553
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 554
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 555
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(2066);
    ref.push(2066);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 556
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(8387);
    ref.push(8387);

//len_list: 99
//==============================


//==============================
    submit.push(4);
    ref.push(4);

//len_list: 100
//==============================


//==============================
    submit.push(6028);
    ref.push(6028);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 557
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(7748);
    ref.push(7748);

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
//num_require: 558
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 559
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 100
//==============================


//==============================
    submit.push(4029);
    ref.push(4029);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 560
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 561
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 562
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
//num_require: 563
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 564
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 565
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(3072);
    ref.push(3072);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 566
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 567
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 568
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 569
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 570
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 571
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 572
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    submit.push(1293);
    ref.push(1293);

//len_list: 102
//==============================


//==============================
    submit.push(8594);
    ref.push(8594);

//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 573
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 574
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 575
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 576
    REQUIRE( ret_ref == ret_submit);
//len_list: 103
//==============================


//==============================
    submit.push(3285);
    ref.push(3285);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 577
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 578
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 579
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 580
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 103
//==============================


//==============================
    submit.push(6764);
    ref.push(6764);

//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 581
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 582
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 583
    REQUIRE( ret_ref == ret_submit);
//len_list: 104
//==============================


//==============================
    submit.push(4097);
    ref.push(4097);

//len_list: 105
//==============================


//==============================
    submit.push(6547);
    ref.push(6547);

//len_list: 106
//==============================


//==============================
    submit.push(7268);
    ref.push(7268);

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
//num_require: 584
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 585
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(9347);
    ref.push(9347);

//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 586
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 587
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 588
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 589
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    submit.push(3509);
    ref.push(3509);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 590
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 591
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(9418);
    ref.push(9418);

//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 592
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(3382);
    ref.push(3382);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 593
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 108
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 594
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 595
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 596
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
//num_require: 597
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 598
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 599
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 600
    REQUIRE( ret_ref == ret_submit);
//len_list: 107
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 601
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 602
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 603
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 604
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 605
    REQUIRE( ret_ref == ret_submit);
//len_list: 106
//==============================


//==============================
    submit.push(2658);
    ref.push(2658);

//len_list: 107
//==============================


//==============================
    submit.push(7770);
    ref.push(7770);

//len_list: 108
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 606
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 607
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 608
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 609
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 610
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(2342);
    ref.push(2342);

//len_list: 109
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 611
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
    submit.push(8963);
    ref.push(8963);

//len_list: 108
//==============================


//==============================
    submit.push(3732);
    ref.push(3732);

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
//num_require: 612
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 613
    REQUIRE( ret_ref == ret_submit);
//len_list: 108
//==============================


//==============================
    submit.push(8695);
    ref.push(8695);

//len_list: 109
//==============================


//==============================
    submit.push(2403);
    ref.push(2403);

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
//num_require: 614
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 615
    REQUIRE( ret_ref == ret_submit);
//len_list: 109
//==============================


//==============================
    submit.push(2907);
    ref.push(2907);

//len_list: 110
//==============================


//==============================
    submit.push(868);
    ref.push(868);

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
//num_require: 616
    REQUIRE( ret_ref == ret_submit);
//len_list: 110
//==============================


//==============================
    submit.push(9644);
    ref.push(9644);

//len_list: 111
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 110
//==============================


//==============================
    submit.push(9665);
    ref.push(9665);

//len_list: 111
//==============================


//==============================
    submit.push(4639);
    ref.push(4639);

//len_list: 112
//==============================


//==============================
    submit.push(846);
    ref.push(846);

//len_list: 113
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 617
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
//num_require: 618
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 619
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
//num_require: 620
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
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    submit.push(7659);
    ref.push(7659);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 621
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    submit.push(8394);
    ref.push(8394);

//len_list: 106
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 105
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 622
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 623
    REQUIRE( ret_ref == ret_submit);
//len_list: 105
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 624
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
//num_require: 625
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 626
    REQUIRE( ret_ref == ret_submit);
//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 627
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 628
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 629
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 630
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 631
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 632
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(4705);
    ref.push(4705);

//len_list: 99
//==============================


//==============================
    submit.push(468);
    ref.push(468);

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
    submit.push(8174);
    ref.push(8174);

//len_list: 99
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 633
    REQUIRE( ret_ref == ret_submit);
//len_list: 99
//==============================


//==============================
    submit.push(4937);
    ref.push(4937);

//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 634
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
//num_require: 635
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 636
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(2684);
    ref.push(2684);

//len_list: 99
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 98
//==============================


//==============================
    submit.push(648);
    ref.push(648);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 637
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(8869);
    ref.push(8869);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 638
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 639
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 640
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 641
    REQUIRE( ret_ref == ret_submit);
//len_list: 98
//==============================


//==============================
    submit.push(9146);
    ref.push(9146);

//len_list: 99
//==============================


//==============================
    submit.push(2762);
    ref.push(2762);

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
    submit.push(2494);
    ref.push(2494);

//len_list: 99
//==============================


//==============================
    submit.push(2325);
    ref.push(2325);

//len_list: 100
//==============================


//==============================
    submit.push(3857);
    ref.push(3857);

//len_list: 101
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 642
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
//num_require: 643
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 644
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 645
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 649
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 650
    REQUIRE( ret_ref == ret_submit);
//len_list: 100
//==============================


//==============================
    submit.push(6027);
    ref.push(6027);

//len_list: 101
//==============================


//==============================
    submit.push(1319);
    ref.push(1319);

//len_list: 102
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 651
    REQUIRE( ret_ref == ret_submit);
//len_list: 102
//==============================


//==============================
    submit.push(9366);
    ref.push(9366);

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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 652
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    submit.push(9906);
    ref.push(9906);

//len_list: 98
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 657
    REQUIRE( ret_ref == ret_submit);
//len_list: 97
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
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
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 659
    REQUIRE( ret_ref == ret_submit);
//len_list: 94
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
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
    submit.pop();
    ref.pop();

//len_list: 93
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 662
    REQUIRE( ret_ref == ret_submit);
//len_list: 93
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 663
    REQUIRE( ret_ref == ret_submit);
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
//num_require: 664
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.push(9540);
    ref.push(9540);

//len_list: 93
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 665
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 666
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 667
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 668
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 669
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 670
    REQUIRE( ret_ref == ret_submit);
//len_list: 92
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 91
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 90
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 671
    REQUIRE( ret_ref == ret_submit);
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
    submit.pop();
    ref.pop();

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 672
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 673
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 674
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(2078);
    ref.push(2078);

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
//num_require: 675
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
//num_require: 676
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 677
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(494);
    ref.push(494);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 678
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
//num_require: 679
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 680
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(6453);
    ref.push(6453);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 681
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 682
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 683
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 684
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
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 685
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 686
    REQUIRE( ret_ref == ret_submit);
//len_list: 82
//==============================


//==============================
    submit.push(7831);
    ref.push(7831);

//len_list: 83
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 82
//==============================


//==============================
    submit.push(6522);
    ref.push(6522);

//len_list: 83
//==============================


//==============================
    submit.push(8617);
    ref.push(8617);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 687
    REQUIRE( ret_ref == ret_submit);
//len_list: 84
//==============================


//==============================
    submit.push(9665);
    ref.push(9665);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 688
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 689
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 690
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 691
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(1753);
    ref.push(1753);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 692
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 693
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
//num_require: 694
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 695
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9745);
    ref.push(9745);

//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 696
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 697
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 698
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 699
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 700
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 701
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
//num_require: 702
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 703
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 704
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 705
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
//num_require: 706
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
//num_require: 707
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 708
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 709
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 710
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(6956);
    ref.push(6956);

//len_list: 84
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 711
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
//num_require: 712
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 713
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 714
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 715
    REQUIRE( ret_ref == ret_submit);
//len_list: 83
//==============================


//==============================
    submit.push(4597);
    ref.push(4597);

//len_list: 84
//==============================


//==============================
    submit.push(9831);
    ref.push(9831);

//len_list: 85
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 716
    REQUIRE( ret_ref == ret_submit);
//len_list: 85
//==============================


//==============================
    submit.push(9469);
    ref.push(9469);

//len_list: 86
//==============================


//==============================
    submit.pop();
    ref.pop();

//len_list: 85
//==============================


//==============================
    submit.push(2626);
    ref.push(2626);

//len_list: 86
//==============================


//==============================
    submit.push(4189);
    ref.push(4189);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 717
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
//num_require: 718
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    ret_submit = submit.top();
    ret_ref = ref.top();
//num_require: 719
    REQUIRE( ret_ref == ret_submit);
//len_list: 86
//==============================


//==============================
    submit.push(774);
    ref.push(774);

//len_list: 87
//==============================


//==============================
    ret_submit = submit.empty();
    ret_ref = ref.empty();
//num_require: 720
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 721
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


//==============================
    ret_submit = submit.size();
    ret_ref = ref.size();
//num_require: 722
    REQUIRE( ret_ref == ret_submit);
//len_list: 87
//==============================


}
